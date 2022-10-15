.class Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$2;
.super Ljava/lang/Object;
.source "HandUpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;->showTimeDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

.field final synthetic val$ad:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$2;->val$ad:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/hands_up/HandUpActivity$2;->val$ad:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 351
    return-void
.end method
