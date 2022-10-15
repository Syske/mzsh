.class public Lcom/trello/rxlifecycle/RxLifecycle;
.super Ljava/lang/Object;
.source "RxLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trello/rxlifecycle/RxLifecycle$OutsideLifecycleException;
    }
.end annotation


# static fields
.field private static final ACTIVITY_LIFECYCLE:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lcom/trello/rxlifecycle/ActivityEvent;",
            "Lcom/trello/rxlifecycle/ActivityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRAGMENT_LIFECYCLE:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lcom/trello/rxlifecycle/FragmentEvent;",
            "Lcom/trello/rxlifecycle/FragmentEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESUME_FUNCTION:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOULD_COMPLETE:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/trello/rxlifecycle/RxLifecycle$4;

    invoke-direct {v0}, Lcom/trello/rxlifecycle/RxLifecycle$4;-><init>()V

    sput-object v0, Lcom/trello/rxlifecycle/RxLifecycle;->RESUME_FUNCTION:Lrx/functions/Func1;

    .line 226
    new-instance v0, Lcom/trello/rxlifecycle/RxLifecycle$5;

    invoke-direct {v0}, Lcom/trello/rxlifecycle/RxLifecycle$5;-><init>()V

    sput-object v0, Lcom/trello/rxlifecycle/RxLifecycle;->SHOULD_COMPLETE:Lrx/functions/Func1;

    .line 234
    new-instance v0, Lcom/trello/rxlifecycle/RxLifecycle$6;

    invoke-direct {v0}, Lcom/trello/rxlifecycle/RxLifecycle$6;-><init>()V

    sput-object v0, Lcom/trello/rxlifecycle/RxLifecycle;->ACTIVITY_LIFECYCLE:Lrx/functions/Func1;

    .line 258
    new-instance v0, Lcom/trello/rxlifecycle/RxLifecycle$7;

    invoke-direct {v0}, Lcom/trello/rxlifecycle/RxLifecycle$7;-><init>()V

    sput-object v0, Lcom/trello/rxlifecycle/RxLifecycle;->FRAGMENT_LIFECYCLE:Lrx/functions/Func1;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic access$000()Lrx/functions/Func1;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/trello/rxlifecycle/RxLifecycle;->SHOULD_COMPLETE:Lrx/functions/Func1;

    return-object v0
.end method

.method static synthetic access$100()Lrx/functions/Func1;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/trello/rxlifecycle/RxLifecycle;->RESUME_FUNCTION:Lrx/functions/Func1;

    return-object v0
.end method

.method private static bind(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable$Transformer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TR;>;",
            "Lrx/functions/Func1",
            "<TR;TR;>;)",
            "Lrx/Observable$Transformer",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "lifecycle":Lrx/Observable;, "Lrx/Observable<TR;>;"
    .local p1, "correspondingEvents":Lrx/functions/Func1;, "Lrx/functions/Func1<TR;TR;>;"
    if-nez p0, :cond_0

    .line 187
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Lifecycle must be given"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_0
    invoke-virtual {p0}, Lrx/Observable;->share()Lrx/Observable;

    move-result-object v0

    .line 194
    .local v0, "sharedLifecycle":Lrx/Observable;, "Lrx/Observable<TR;>;"
    new-instance v1, Lcom/trello/rxlifecycle/RxLifecycle$3;

    invoke-direct {v1, v0, p1}, Lcom/trello/rxlifecycle/RxLifecycle$3;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    return-object v1
.end method

.method public static bindActivity(Lrx/Observable;)Lrx/Observable$Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<",
            "Lcom/trello/rxlifecycle/ActivityEvent;",
            ">;)",
            "Lrx/Observable$Transformer",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "lifecycle":Lrx/Observable;, "Lrx/Observable<Lcom/trello/rxlifecycle/ActivityEvent;>;"
    sget-object v0, Lcom/trello/rxlifecycle/RxLifecycle;->ACTIVITY_LIFECYCLE:Lrx/functions/Func1;

    invoke-static {p0, v0}, Lcom/trello/rxlifecycle/RxLifecycle;->bind(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable$Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static bindFragment(Lrx/Observable;)Lrx/Observable$Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<",
            "Lcom/trello/rxlifecycle/FragmentEvent;",
            ">;)",
            "Lrx/Observable$Transformer",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "lifecycle":Lrx/Observable;, "Lrx/Observable<Lcom/trello/rxlifecycle/FragmentEvent;>;"
    sget-object v0, Lcom/trello/rxlifecycle/RxLifecycle;->FRAGMENT_LIFECYCLE:Lrx/functions/Func1;

    invoke-static {p0, v0}, Lcom/trello/rxlifecycle/RxLifecycle;->bind(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable$Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static bindUntilActivityEvent(Lrx/Observable;Lcom/trello/rxlifecycle/ActivityEvent;)Lrx/Observable$Transformer;
    .locals 1
    .param p1, "event"    # Lcom/trello/rxlifecycle/ActivityEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<",
            "Lcom/trello/rxlifecycle/ActivityEvent;",
            ">;",
            "Lcom/trello/rxlifecycle/ActivityEvent;",
            ")",
            "Lrx/Observable$Transformer",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "lifecycle":Lrx/Observable;, "Lrx/Observable<Lcom/trello/rxlifecycle/ActivityEvent;>;"
    invoke-static {p0, p1}, Lcom/trello/rxlifecycle/RxLifecycle;->bindUntilEvent(Lrx/Observable;Ljava/lang/Object;)Lrx/Observable$Transformer;

    move-result-object v0

    return-object v0
.end method

.method private static bindUntilEvent(Lrx/Observable;Ljava/lang/Object;)Lrx/Observable$Transformer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TR;>;TR;)",
            "Lrx/Observable$Transformer",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "lifecycle":Lrx/Observable;, "Lrx/Observable<TR;>;"
    .local p1, "event":Ljava/lang/Object;, "TR;"
    if-nez p0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lifecycle must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    if-nez p1, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    new-instance v0, Lcom/trello/rxlifecycle/RxLifecycle$1;

    invoke-direct {v0, p0, p1}, Lcom/trello/rxlifecycle/RxLifecycle$1;-><init>(Lrx/Observable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static bindUntilFragmentEvent(Lrx/Observable;Lcom/trello/rxlifecycle/FragmentEvent;)Lrx/Observable$Transformer;
    .locals 1
    .param p1, "event"    # Lcom/trello/rxlifecycle/FragmentEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<",
            "Lcom/trello/rxlifecycle/FragmentEvent;",
            ">;",
            "Lcom/trello/rxlifecycle/FragmentEvent;",
            ")",
            "Lrx/Observable$Transformer",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "lifecycle":Lrx/Observable;, "Lrx/Observable<Lcom/trello/rxlifecycle/FragmentEvent;>;"
    invoke-static {p0, p1}, Lcom/trello/rxlifecycle/RxLifecycle;->bindUntilEvent(Lrx/Observable;Ljava/lang/Object;)Lrx/Observable$Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static bindView(Landroid/view/View;)Lrx/Observable$Transformer;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            ")",
            "Lrx/Observable$Transformer",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    invoke-static {p0}, Lcom/jakewharton/rxbinding/view/RxView;->detaches(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lcom/trello/rxlifecycle/RxLifecycle;->bindView(Lrx/Observable;)Lrx/Observable$Transformer;

    move-result-object v0

    return-object v0
.end method

.method public static bindView(Lrx/Observable;)Lrx/Observable$Transformer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TE;>;)",
            "Lrx/Observable$Transformer",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "lifecycle":Lrx/Observable;, "Lrx/Observable<+TE;>;"
    if-nez p0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lifecycle must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    new-instance v0, Lcom/trello/rxlifecycle/RxLifecycle$2;

    invoke-direct {v0, p0}, Lcom/trello/rxlifecycle/RxLifecycle$2;-><init>(Lrx/Observable;)V

    return-object v0
.end method
