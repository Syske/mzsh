.class public Lcom/desay/wheel/widget/adapters/AdapterWheel;
.super Lcom/desay/wheel/widget/adapters/AbstractWheelTextAdapter;
.source "AdapterWheel.java"


# instance fields
.field private adapter:Lcom/desay/wheel/widget/WheelAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/desay/wheel/widget/WheelAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/desay/wheel/widget/WheelAdapter;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/desay/wheel/widget/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/desay/wheel/widget/adapters/AdapterWheel;->adapter:Lcom/desay/wheel/widget/WheelAdapter;

    .line 42
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/desay/wheel/widget/WheelAdapter;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/desay/wheel/widget/adapters/AdapterWheel;->adapter:Lcom/desay/wheel/widget/WheelAdapter;

    return-object v0
.end method

.method protected getItemText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/desay/wheel/widget/adapters/AdapterWheel;->adapter:Lcom/desay/wheel/widget/WheelAdapter;

    invoke-interface {v0, p1}, Lcom/desay/wheel/widget/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/desay/wheel/widget/adapters/AdapterWheel;->adapter:Lcom/desay/wheel/widget/WheelAdapter;

    invoke-interface {v0}, Lcom/desay/wheel/widget/WheelAdapter;->getItemsCount()I

    move-result v0

    return v0
.end method
