.class final Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe;
.super Ljava/lang/Object;
.source "SearchViewQueryTextChangesOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/CharSequence;",
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
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe;->view:Landroid/widget/SearchView;

    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe;->view:Landroid/widget/SearchView;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/CharSequence;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 20
    new-instance v0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe;Lrx/Subscriber;)V

    .line 34
    .local v0, "watcher":Landroid/widget/SearchView$OnQueryTextListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe;->view:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 36
    new-instance v1, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 43
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextChangesOnSubscribe;->view:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 44
    return-void
.end method
