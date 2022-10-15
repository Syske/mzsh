.class Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$5;
.super Ljava/lang/Object;
.source "NewBindActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->forceToOTA(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

.field final synthetic val$p:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$5;->val$p:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 228
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 229
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$5;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$5;->val$p:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;

    iget-object v1, v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$5;->val$p:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->mac:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$800(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method
