.class final Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;
.super Ljava/lang/Object;
.source "SearchViewQueryTextChangeEventsOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final view:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/SearchView;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;->view:Landroid/widget/SearchView;

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;->view:Landroid/widget/SearchView;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;Lrx/Subscriber;)V

    .line 39
    .local v0, "watcher":Landroid/widget/SearchView$OnQueryTextListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;->view:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 41
    new-instance v1, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 48
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;->view:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangeEventsOnSubscribe;->view:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->create(Landroid/widget/SearchView;Ljava/lang/CharSequence;Z)Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 49
    return-void
.end method
