.class final Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;
.super Ljava/lang/Object;
.source "AdapterDataChangeOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final adapter:Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;, "Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe<TT;>;"
    .local p1, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;->adapter:Landroid/widget/Adapter;

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;)Landroid/widget/Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;->adapter:Landroid/widget/Adapter;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;, "Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;, "Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 22
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;Lrx/Subscriber;)V

    .line 29
    .local v0, "observer":Landroid/database/DataSetObserver;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;->adapter:Landroid/widget/Adapter;

    invoke-interface {v1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 31
    new-instance v1, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;

    invoke-direct {v1, p0, v0}, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;Landroid/database/DataSetObserver;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 38
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;->adapter:Landroid/widget/Adapter;

    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 39
    return-void
.end method
