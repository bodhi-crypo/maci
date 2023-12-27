/** Declaration file generated by dts-gen */
declare module "circom_tester" {
  interface Options {
    include?: string | string[];
    sym?: boolean;
    r1cs?: boolean;
    json?: boolean;
    output?: string;
    prime?: string;
    O?: 0 | 1;
    verbose?: boolean;
    inspect?: boolean;
    recompile?: boolean;
    compile?: boolean;
    wasm?: boolean;
  }

  interface CircuitSymbol {
    labelIdx: number;
    varIdx: number;
    componentIdx: number;
  }

  interface Symbols {
    [key: string]: CircuitSymbol;
  }

  interface WitnessCalculator {
    calculateWitness(input: any, sanityCheck?: boolean): Promise<any[]>;
  }

  class WasmTester {
    constructor(dir: string, baseName: string, witnessCalculator: WitnessCalculator);
    symbols: Symbols;
    calculateWitness(input: unknown, sanityCheck?: boolean): Promise<bigint[]>;
    loadSymbols(): Promise<void>;
    checkConstraints(witness: bigint[]): Promise<void>;
  }

  export function wasm(circomInput: string, _options?: Options): Promise<WasmTester>;
}