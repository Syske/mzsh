.class Lcom/tencent/tinker/android/dx/util/IndexMap$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/tinker/android/dex/util/ByteInput;


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

.field final synthetic val$baisRef:Ljava/io/ByteArrayInputStream;


# direct methods
.method constructor <init>(Lcom/tencent/tinker/android/dx/util/IndexMap;Ljava/io/ByteArrayInputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/tinker/android/dx/util/IndexMap;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/tencent/tinker/android/dx/util/IndexMap$1;->this$0:Lcom/tencent/tinker/android/dx/util/IndexMap;

    iput-object p2, p0, Lcom/tencent/tinker/android/dx/util/IndexMap$1;->val$baisRef:Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readByte()B
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/IndexMap$1;->val$baisRef:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method
