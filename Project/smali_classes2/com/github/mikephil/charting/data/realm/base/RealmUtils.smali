.class public final Lcom/github/mikephil/charting/data/realm/base/RealmUtils;
.super Ljava/lang/Object;
.source "RealmUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toXVals(Lio/realm/RealmResults;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "xValuesField"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmResults",
            "<+",
            "Lio/realm/RealmObject;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "result":Lio/realm/RealmResults;, "Lio/realm/RealmResults<+Lio/realm/RealmObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v2, "xVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/RealmObject;

    .line 28
    .local v1, "object":Lio/realm/RealmObject;
    new-instance v0, Lio/realm/dynamic/DynamicRealmObject;

    invoke-direct {v0, v1}, Lio/realm/dynamic/DynamicRealmObject;-><init>(Lio/realm/RealmObject;)V

    .line 29
    .local v0, "dynamicObject":Lio/realm/dynamic/DynamicRealmObject;
    invoke-virtual {v0, p1}, Lio/realm/dynamic/DynamicRealmObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    .end local v0    # "dynamicObject":Lio/realm/dynamic/DynamicRealmObject;
    .end local v1    # "object":Lio/realm/RealmObject;
    :cond_0
    return-object v2
.end method
