.class Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;
.super Ljava/lang/Object;
.source "NewBindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Product"
.end annotation


# instance fields
.field public mac:Ljava/lang/String;

.field public mode:Ljava/lang/Integer;

.field public name:Ljava/lang/String;

.field public rssi:I

.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;
    .param p2, "x1"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$1;

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)V

    return-void
.end method
