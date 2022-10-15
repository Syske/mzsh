.class Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$8;
.super Ljava/lang/Object;
.source "BindActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->forceToOTA(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

.field final synthetic val$p:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$8;->val$p:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 515
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 516
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$8;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$8;->val$p:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;

    iget-object v1, v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$8;->val$p:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->mac:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$1400(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method
