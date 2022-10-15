.class Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$2;
.super Ljava/lang/Object;
.source "HorizontalPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->finishScrolling()V
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
    .line 893
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 896
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$300(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemSelected;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollX()I

    move-result v2

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$200(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemSelected;->onItemSelected(I)V

    .line 897
    return-void
.end method
