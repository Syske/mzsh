.class final Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;
.super Ljava/lang/Object;
.source "AdapterViewItemSelectionOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;->view:Landroid/widget/AdapterView;

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;)Landroid/widget/AdapterView;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;->view:Landroid/widget/AdapterView;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 22
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;Lrx/Subscriber;)V

    .line 36
    .local v0, "listener":Landroid/widget/AdapterView$OnItemSelectedListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;->view:Landroid/widget/AdapterView;

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 38
    new-instance v1, Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 45
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemSelectionOnSubscribe;->view:Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 46
    return-void
.end method
