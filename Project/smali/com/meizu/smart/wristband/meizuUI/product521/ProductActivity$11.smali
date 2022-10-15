.class Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$11;
.super Ljava/lang/Object;
.source "ProductActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->forceToOTADialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$11;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 790
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 791
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity$11;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;->access$1000(Lcom/meizu/smart/wristband/meizuUI/product521/ProductActivity;)V

    .line 793
    return-void
.end method
