package Bezel.GCCS
{
    import Bezel.Lattice.LatticePatcher;

    import com.cff.anebe.ir.ASClass;
    import com.cff.anebe.ir.ASInstruction;
    import com.cff.anebe.ir.ASMultiname;
    import com.cff.anebe.ir.ASTrait;
    import com.cff.anebe.ir.multinames.ASQName;
    import com.cff.anebe.ir.namespaces.PackageInternalNs;
    import com.cff.anebe.ir.namespaces.PackageNamespace;

    internal class GCCSLoaderSaverPatcher implements LatticePatcher
    {
        public function patchClass(clazz:ASClass):void
        {
            patchSave(clazz);
            for (var slot:int = 1; slot <= 8; slot++)
            {
                patchLoad(clazz, "ehContinueSlotL" + slot + "Clicked");
                patchLoad(clazz, "ehNewGameSlotL" + slot + "Clicked");
                patchLoad(clazz, "ehNewGameSlotL" + slot + "IronClicked");
            }
        }

        private function patchSave(clazz:ASClass):void
        {
            var saveTrait:ASTrait = clazz.getInstanceTrait(ASQName(PackageNamespace(""), "saveGameData"));
            var instructions:Vector.<ASInstruction> = saveTrait.funcOrMethod.body.instructions;

            for (var i:int = 0; i < instructions.length; i++)
            {
                if (instructions[i].opcode == ASInstruction.OP_callpropvoid && (instructions[i].args[0] as ASMultiname).name == "close")
                {
                    instructions.splice(GCCSCoreMod.nextNotDebug(instructions, i), 0,
                        ASInstruction.GetLex(ASQName(PackageInternalNs("Bezel.GCCS"), "GCCSEventHandlers")),
                        ASInstruction.CallPropVoid(ASQName(PackageInternalNs("Bezel.GCCS"), "saveSave"), 0)
                        );

                    clazz.setInstanceTrait(saveTrait);
                    return;
                }
            }

            throw new Error("Could not patch saveSave");
        }

        private function patchLoad(clazz:ASClass, name:String):void
        {
            var loadTrait:ASTrait = clazz.getInstanceTrait(ASQName(PackageNamespace(""), name));
            var instructions:Vector.<ASInstruction> = loadTrait.funcOrMethod.body.instructions;

            instructions.splice(instructions.length - 1, 0,
                ASInstruction.GetLex(ASQName(PackageInternalNs("Bezel.GCCS"), "GCCSEventHandlers")),
                ASInstruction.CallPropVoid(ASQName(PackageInternalNs("Bezel.GCCS"), "loadSave"), 0)
                );

            clazz.setInstanceTrait(loadTrait);
        }
    }
}
