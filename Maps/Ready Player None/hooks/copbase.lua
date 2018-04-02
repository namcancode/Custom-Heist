function CopBase:_chk_spawn_gear()

    if Global.level_data.level_id == "Victor Romeo" then
    if self._tweak_table == "drug_lord_boss" then
    else
        local align_obj_name = Idstring("Head")
        local align_obj = self._unit:get_object(align_obj_name)
        self._headwear_unit = World:spawn_unit(Idstring("units/mainman/characters/ene_acc_vr/ene_acc_vr"), Vector3(), Rotation())

        self._unit:link(align_obj_name, self._headwear_unit, self._headwear_unit:orientation_object():name())
    end
end
end