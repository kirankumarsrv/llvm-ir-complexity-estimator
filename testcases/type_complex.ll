; ModuleID = 'type_complex'

%struct.Node = type { i32, [2 x i8], i16* }

define i32 @type_complex(%struct.Node* %n) {
entry:
  %idptr = getelementptr inbounds %struct.Node, %struct.Node* %n, i32 0, i32 0
  %id = load i32, i32* %idptr
  %tagptr = getelementptr inbounds %struct.Node, %struct.Node* %n, i32 0, i32 1
  %tag0 = getelementptr inbounds [2 x i8], [2 x i8]* %tagptr, i32 0, i32 0
  %c = load i8, i8* %tag0
  %ext = zext i8 %c to i32
  %sum = add i32 %id, %ext
  ret i32 %sum
}
