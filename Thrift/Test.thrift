/*
 transport-sample thrift IDL file .
 Execute thriftme.bat under Windows to generate the cpp stubs from this IDL.
 */

// See thrift/tutorial/tutorial.thrift and shared.thrift for more extensive examples.


namespace cpp Sample
namespace java Sample
namespace perl Sample

//This struct is not used in the sample. Shown here for illustrative purposes only.
//
struct SampleStruct
{
  1: i32 key
  2: string value
}


//A service contains the RPC(s).
//
service TestService
{
  string Hello(1:string HelloString),
  SampleStruct GetSampleStruct(1: i32 key, 2:string value),
}

