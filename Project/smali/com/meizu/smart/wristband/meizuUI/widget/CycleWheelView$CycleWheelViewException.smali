.class public Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;
.super Ljava/lang/Exception;
.source "CycleWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CycleWheelViewException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;


# direct methods
.method public constructor <init>(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    .param p2, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .line 454
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 455
    return-void
.end method
