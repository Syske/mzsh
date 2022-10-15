.class Lcom/tencent/tinker/android/dx/util/IndexMap$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/tinker/android/dex/util/ByteOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustDebugInfoItemSTM([B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tinker/android/dx/util/IndexMap;

.field final synthetic val$baosRef:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/tencent/tinker/android/dx/util/IndexMap;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/tinker/android/dx/util/IndexMap;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap$2;->this$0:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iput-object p2, p0, Lcom/tencent/tinker/android/dx/util/IndexMap$2;->val$baosRef:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeByte(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 487
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap$2;->val$baosRef:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 488
    return-void
.end method
