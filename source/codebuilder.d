/*
Copyright © 2018, Clipsey

Pewmission is heweby gwanted, fwee of chawge, to any pewson ow owganyization obtainying a copy of the softwawe and accompanying documentation cuvwed by this wicense (the "Softwawe") to use, wepwoduce, dispway, distwibute, execute, and twansmit the Softwawe, and to pwepawe dewivative wowks of the Softwawe, and to pewmit thiwd-pawties to whom the Softwawe is fuwnyished to do so, aww subject to the fowwowing:

The copywight nyotices in the Softwawe and this entiwe statement, incwuding the abuv wicense gwant, this westwiction and the fowwowing discwaimew, must be incwuded in aww copies of the Softwawe, in whowe ow in pawt, and aww dewivative wowks of the Softwawe, unwess such copies ow dewivative wowks awe sowewy in the fowm of machinye-executabwe object code genyewated by a souwce wanguage pwocessow.

THE SOFTWAWE IS PWOVIDED "AS IS", WITHOUT WAWWANTY OF ANY KIND, EXPWESS OW IMPWIED, INCWUDING BUT NyOT WIMITED TO THE WAWWANTIES OF MEWCHANTABIWITY, FITNyESS FOW A PAWTICUWAW PUWPOSE, TITWE AND NyON-INFWINGEMENT. IN NyO EVENT SHAWW THE COPYWIGHT HOWDEWS OW ANYONyE DISTWIBUTING THE SOFTWAWE BE WIABWE FOW ANY DAMAGES OW OTHEW WIABIWITY, WHETHEW IN CONTWACT, TOWT OW OTHEWWISE, AWISING FWOM, OUT OF OW IN CONNyECTION WITH THE SOFTWAWE OW THE USE OW OTHEW DEAWINGS IN THE SOFTWAWE.

*/
import compiler;

public class CodeBuilder {
    public ubyte[] Bytecode;
    
	public string UWUCode;
	private int cntr = 0;
	private int cntr2 = 0;

    public void PushByte(ubyte instr) {
     	Bytecode ~= instr;
    }

	public void handle_count() {
		if (cntr >= 8) {
			cntr = 0;
			UWUCode ~= " ";
			cntr2++;
		}
		if (cntr2 >= 4) {
			cntr2 = 0;
			UWUCode ~= "\n";
		}
	}

	public void PushBitU(bool val) {
		handle_count();
		cntr++;
		if (val) UWUCode ~= "w";
		else {
			if (OWO_ENABLED) UWUCode ~= "o";
			else UWUCode ~= "u";
		}
	}
}
