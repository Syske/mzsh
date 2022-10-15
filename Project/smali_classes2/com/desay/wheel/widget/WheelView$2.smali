.class Lcom/desay/wheel/widget/WheelView$2;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay/wheel/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/desay/wheel/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/desay/wheel/widget/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/desay/wheel/widget/WheelView;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/desay/wheel/widget/WheelView$2;->this$0:Lcom/desay/wheel/widget/WheelView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/desay/wheel/widget/WheelView$2;->this$0:Lcom/desay/wheel/widget/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/desay/wheel/widget/WheelView;->invalidateWheel(Z)V

    .line 212
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/desay/wheel/widget/WheelView$2;->this$0:Lcom/desay/wheel/widget/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/desay/wheel/widget/WheelView;->invalidateWheel(Z)V

    .line 217
    return-void
.end method
