.class Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$2;
.super Ljava/lang/Object;
.source "LongSitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->showTimeDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;

.field final synthetic val$ad:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$2;->val$ad:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$2;->val$ad:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 298
    return-void
.end method
