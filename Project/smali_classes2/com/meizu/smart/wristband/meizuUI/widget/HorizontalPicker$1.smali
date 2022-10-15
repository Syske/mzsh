.class Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$1;
.super Ljava/lang/Object;
.source "HorizontalPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->selectItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemClicked;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getSelectedItem()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemClicked;->onItemClicked(I)V

    .line 591
    return-void
.end method
