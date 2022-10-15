.class Lcom/tencent/tinker/android/dex/io/DexDataBuffer$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/tinker/android/dex/util/ByteOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readDebugInfoItem()Lcom/tencent/tinker/android/dex/DebugInfoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

.field final synthetic val$baosRef:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer$1;->this$0:Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    iput-object p2, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer$1;->val$baosRef:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeByte(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/io/DexDataBuffer$1;->val$baosRef:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 329
    return-void
.end method
