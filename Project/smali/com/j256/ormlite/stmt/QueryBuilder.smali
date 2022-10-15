.class public Lcom/j256/ormlite/stmt/QueryBuilder;
.super Lcom/j256/ormlite/stmt/StatementBuilder;
.source "QueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/stmt/QueryBuilder$InternalQueryBuilderWrapper;,
        Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/StatementBuilder",
        "<TT;TID;>;"
    }
.end annotation


# instance fields
.field private distinct:Z

.field private groupByList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private groupByRaw:Ljava/lang/String;

.field private having:Ljava/lang/String;

.field private final idField:Lcom/j256/ormlite/field/FieldType;

.field private isCountOfQuery:Z

.field private isInnerQuery:Z

.field private joinList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>.JoinInfo;>;"
        }
    .end annotation
.end field

.field private limit:Ljava/lang/Long;

.field private offset:Ljava/lang/Long;

.field private orderByArgs:[Lcom/j256/ormlite/stmt/ArgumentHolder;

.field private orderByList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/query/OrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private orderByRaw:Ljava/lang/String;

.field private resultFieldTypes:[Lcom/j256/ormlite/field/FieldType;

.field private selectColumnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectIdColumn:Z

.field private selectRawList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p3, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectIdColumn:Z

    .line 57
    invoke-virtual {p2}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->idField:Lcom/j256/ormlite/field/FieldType;

    .line 58
    return-void
.end method

.method private addJoinInfo(Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "joinedQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    new-instance v0, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;-><init>(Lcom/j256/ormlite/stmt/QueryBuilder;Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)V

    .line 480
    .local v0, "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>.JoinInfo;"
    invoke-direct {p0, v0, p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->matchJoinedFields(Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;Lcom/j256/ormlite/stmt/QueryBuilder;)V

    .line 481
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 482
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    return-void
.end method

.method private addSelectColumnToList(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 514
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->verifyColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    .line 515
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumnList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    return-void
.end method

.method private appendColumnName(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 732
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->addTableName:Z

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableName:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 734
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0, p1, p2}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method private appendColumns(Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    const/16 v7, 0x2c

    .line 553
    iget-object v6, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumnList:Ljava/util/List;

    if-nez v6, :cond_1

    .line 554
    iget-boolean v6, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->addTableName:Z

    if-eqz v6, :cond_0

    .line 555
    iget-object v6, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v7, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableName:Ljava/lang/String;

    invoke-interface {v6, p1, v7}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 556
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 558
    :cond_0
    const-string v6, "* "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-object v6, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v6}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v6

    iput-object v6, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->resultFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 602
    :goto_0
    return-void

    .line 563
    :cond_1
    const/4 v3, 0x1

    .line 565
    .local v3, "first":Z
    iget-boolean v6, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->isInnerQuery:Z

    if-eqz v6, :cond_3

    .line 566
    const/4 v4, 0x1

    .line 570
    .local v4, "hasId":Z
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumnList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 571
    .local v2, "fieldTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/FieldType;>;"
    iget-object v6, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumnList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 572
    .local v0, "columnName":Ljava/lang/String;
    iget-object v6, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v6, v0}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypeByColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    .line 577
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 578
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 568
    .end local v0    # "columnName":Ljava/lang/String;
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v2    # "fieldTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/FieldType;>;"
    .end local v4    # "hasId":Z
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "hasId":Z
    goto :goto_1

    .line 581
    .restart local v0    # "columnName":Ljava/lang/String;
    .restart local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .restart local v2    # "fieldTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/FieldType;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    if-eqz v3, :cond_5

    .line 582
    const/4 v3, 0x0

    .line 586
    :goto_3
    invoke-direct {p0, p1, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendFieldColumnName(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 587
    iget-object v6, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->idField:Lcom/j256/ormlite/field/FieldType;

    if-ne v1, v6, :cond_2

    .line 588
    const/4 v4, 0x1

    goto :goto_2

    .line 584
    :cond_5
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 593
    .end local v0    # "columnName":Ljava/lang/String;
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_6
    if-nez v4, :cond_8

    iget-boolean v6, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectIdColumn:Z

    if-eqz v6, :cond_8

    .line 594
    if-nez v3, :cond_7

    .line 595
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 597
    :cond_7
    iget-object v6, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-direct {p0, p1, v6, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendFieldColumnName(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 599
    :cond_8
    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 601
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/j256/ormlite/field/FieldType;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/j256/ormlite/field/FieldType;

    iput-object v6, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->resultFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    goto :goto_0
.end method

.method private appendFieldColumnName(Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/j256/ormlite/field/FieldType;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/field/FieldType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p3, "fieldTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/FieldType;>;"
    invoke-virtual {p2}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendColumnName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 606
    if-eqz p3, :cond_0

    .line 607
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_0
    return-void
.end method

.method private appendGroupBys(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 631
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    const/4 v0, 0x1

    .line 632
    .local v0, "first":Z
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->hasGroupStuff()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    invoke-direct {p0, p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendGroupBys(Ljava/lang/StringBuilder;Z)V

    .line 634
    const/4 v0, 0x0

    .line 640
    :cond_0
    iget-object v3, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 641
    iget-object v3, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;

    .line 642
    .local v2, "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>.JoinInfo;"
    iget-object v3, v2, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->hasGroupStuff()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 643
    iget-object v3, v2, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {v3, p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendGroupBys(Ljava/lang/StringBuilder;Z)V

    goto :goto_0

    .line 647
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>.JoinInfo;"
    :cond_2
    return-void
.end method

.method private appendGroupBys(Ljava/lang/StringBuilder;Z)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "first"    # Z

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    const/16 v3, 0x2c

    .line 654
    if-eqz p2, :cond_0

    .line 655
    const-string v2, "GROUP BY "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :cond_0
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByRaw:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 658
    if-nez p2, :cond_1

    .line 659
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 661
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByRaw:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    :cond_2
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 673
    return-void

    .line 663
    :cond_3
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 664
    .local v0, "columnName":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 665
    const/4 p2, 0x0

    .line 669
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendColumnName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 667
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private appendHaving(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 740
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->having:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 741
    const-string v0, "HAVING "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->having:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 743
    :cond_0
    return-void
.end method

.method private appendJoinSql(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    const/16 v4, 0x2e

    .line 519
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;

    .line 520
    .local v1, "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>.JoinInfo;"
    iget-object v2, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " JOIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v3, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v3, v3, Lcom/j256/ormlite/stmt/QueryBuilder;->tableName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 522
    const-string v2, " ON "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v3, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->localField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 526
    const-string v2, " = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v3, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v3, v3, Lcom/j256/ormlite/stmt/QueryBuilder;->tableName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 529
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v3, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->remoteField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v3}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 530
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 532
    iget-object v2, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v2, v2, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 533
    iget-object v2, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {v2, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendJoinSql(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 536
    .end local v1    # "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>.JoinInfo;"
    :cond_1
    return-void
.end method

.method private appendLimit(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 612
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->limit:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isLimitSqlSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->limit:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->offset:Ljava/lang/Long;

    invoke-interface {v0, p1, v2, v3, v1}, Lcom/j256/ormlite/db/DatabaseType;->appendLimitValue(Ljava/lang/StringBuilder;JLjava/lang/Long;)V

    .line 615
    :cond_0
    return-void
.end method

.method private appendOffset(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->offset:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isOffsetLimitArgument()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->limit:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "If the offset is specified, limit must also be specified with this database"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->offset:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Lcom/j256/ormlite/db/DatabaseType;->appendOffsetValue(Ljava/lang/StringBuilder;J)V

    goto :goto_0
.end method

.method private appendOrderBys(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    const/4 v0, 0x1

    .line 677
    .local v0, "first":Z
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->hasOrderStuff()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 678
    invoke-direct {p0, p1, v0, p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendOrderBys(Ljava/lang/StringBuilder;ZLjava/util/List;)V

    .line 679
    const/4 v0, 0x0

    .line 685
    :cond_0
    iget-object v3, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 686
    iget-object v3, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;

    .line 687
    .local v2, "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>.JoinInfo;"
    iget-object v3, v2, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->hasOrderStuff()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 688
    iget-object v3, v2, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {v3, p1, v0, p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendOrderBys(Ljava/lang/StringBuilder;ZLjava/util/List;)V

    goto :goto_0

    .line 692
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>.JoinInfo;"
    :cond_2
    return-void
.end method

.method private appendOrderBys(Ljava/lang/StringBuilder;ZLjava/util/List;)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "first"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p3, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    const/16 v6, 0x2c

    .line 699
    if-eqz p2, :cond_0

    .line 700
    const-string v5, "ORDER BY "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    :cond_0
    iget-object v5, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 703
    if-nez p2, :cond_1

    .line 704
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 706
    :cond_1
    iget-object v5, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    iget-object v5, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByArgs:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    if-eqz v5, :cond_5

    .line 708
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByArgs:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    .local v1, "arr$":[Lcom/j256/ormlite/stmt/ArgumentHolder;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v0, v1, v2

    .line 709
    .local v0, "arg":Lcom/j256/ormlite/stmt/ArgumentHolder;
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 713
    .end local v0    # "arg":Lcom/j256/ormlite/stmt/ArgumentHolder;
    .end local v1    # "arr$":[Lcom/j256/ormlite/stmt/ArgumentHolder;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    iget-object v5, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/j256/ormlite/stmt/query/OrderBy;

    .line 714
    .local v4, "orderBy":Lcom/j256/ormlite/stmt/query/OrderBy;
    if-eqz p2, :cond_4

    .line 715
    const/4 p2, 0x0

    .line 719
    :goto_2
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/query/OrderBy;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendColumnName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 720
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/query/OrderBy;->isAscending()Z

    move-result v5

    if-nez v5, :cond_3

    .line 724
    const-string v5, " DESC"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 717
    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 728
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "orderBy":Lcom/j256/ormlite/stmt/query/OrderBy;
    :cond_5
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 729
    return-void
.end method

.method private appendSelectRaw(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 539
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    const/4 v1, 0x1

    .line 540
    .local v1, "first":Z
    iget-object v3, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRawList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 541
    .local v0, "column":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 542
    const/4 v1, 0x0

    .line 546
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 544
    :cond_0
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 548
    .end local v0    # "column":Ljava/lang/String;
    :cond_1
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    return-void
.end method

.method private hasGroupStuff()Z
    .locals 1

    .prologue
    .line 650
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByRaw:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasOrderStuff()Z
    .locals 1

    .prologue
    .line 695
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchJoinedFields(Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;Lcom/j256/ormlite/stmt/QueryBuilder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>.JoinInfo;",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 491
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p1, "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>.JoinInfo;"
    .local p2, "joinedQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    iget-object v5, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v5}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 493
    .local v1, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->getForeignIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v2

    .line 494
    .local v2, "foreignIdField":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isForeign()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v5}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/j256/ormlite/field/FieldType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 495
    iput-object v1, p1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->localField:Lcom/j256/ormlite/field/FieldType;

    .line 496
    iput-object v2, p1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->remoteField:Lcom/j256/ormlite/field/FieldType;

    .line 505
    .end local v2    # "foreignIdField":Lcom/j256/ormlite/field/FieldType;
    :goto_1
    return-void

    .line 491
    .restart local v2    # "foreignIdField":Lcom/j256/ormlite/field/FieldType;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 501
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v2    # "foreignIdField":Lcom/j256/ormlite/field/FieldType;
    :cond_1
    iget-object v5, p2, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v5}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 502
    .restart local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isForeign()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->getForeignIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v5

    iget-object v6, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/field/FieldType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 503
    iget-object v5, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->idField:Lcom/j256/ormlite/field/FieldType;

    iput-object v5, p1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->localField:Lcom/j256/ormlite/field/FieldType;

    .line 504
    iput-object v1, p1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->remoteField:Lcom/j256/ormlite/field/FieldType;

    goto :goto_1

    .line 501
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 509
    .end local v1    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_3
    new-instance v5, Ljava/sql/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find a foreign "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v7}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " field in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/j256/ormlite/stmt/QueryBuilder;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v7}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " or vice versa"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private setAddTableName(Z)V
    .locals 3
    .param p1, "addTableName"    # Z

    .prologue
    .line 467
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iput-boolean p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->addTableName:Z

    .line 468
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;

    .line 470
    .local v1, "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>.JoinInfo;"
    iget-object v2, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-direct {v2, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->setAddTableName(Z)V

    goto :goto_0

    .line 473
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>.JoinInfo;"
    :cond_0
    return-void
.end method


# virtual methods
.method protected appendStatementEnd(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendGroupBys(Ljava/lang/StringBuilder;)V

    .line 451
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendHaving(Ljava/lang/StringBuilder;)V

    .line 452
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendOrderBys(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 453
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isLimitAfterSelect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendLimit(Ljava/lang/StringBuilder;)V

    .line 456
    :cond_0
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendOffset(Ljava/lang/StringBuilder;)V

    .line 458
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->setAddTableName(Z)V

    .line 459
    return-void
.end method

.method protected appendStatementStart(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-nez v0, :cond_3

    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->setAddTableName(Z)V

    .line 402
    :goto_0
    const-string v0, "SELECT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isLimitAfterSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendLimit(Ljava/lang/StringBuilder;)V

    .line 406
    :cond_0
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->distinct:Z

    if-eqz v0, :cond_1

    .line 407
    const-string v0, "DISTINCT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_1
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->isCountOfQuery:Z

    if-eqz v0, :cond_4

    .line 410
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_LONG:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    iput-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 411
    const-string v0, "COUNT(*) "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :goto_1
    const-string v0, "FROM "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->tableName:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/j256/ormlite/db/DatabaseType;->appendEscapedEntityName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 421
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 422
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 423
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendJoinSql(Ljava/lang/StringBuilder;)V

    .line 425
    :cond_2
    return-void

    .line 400
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->setAddTableName(Z)V

    goto :goto_0

    .line 412
    :cond_4
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRawList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRawList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 413
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT_RAW:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    iput-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 414
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendSelectRaw(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 416
    :cond_5
    sget-object v0, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    iput-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 417
    invoke-direct {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendColumns(Ljava/lang/StringBuilder;)V

    goto :goto_1
.end method

.method protected appendWhereStatement(Ljava/lang/StringBuilder;Ljava/util/List;Z)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "first"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p2, "argList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->where:Lcom/j256/ormlite/stmt/Where;

    if-eqz v2, :cond_0

    .line 436
    invoke-super {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/StatementBuilder;->appendWhereStatement(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    .line 437
    const/4 p3, 0x0

    .line 439
    :cond_0
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 440
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;

    .line 441
    .local v1, "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>.JoinInfo;"
    iget-object v2, v1, Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;->queryBuilder:Lcom/j256/ormlite/stmt/QueryBuilder;

    invoke-virtual {v2, p1, p2, p3}, Lcom/j256/ormlite/stmt/QueryBuilder;->appendWhereStatement(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    .line 442
    const/4 p3, 0x0

    goto :goto_0

    .line 445
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "joinInfo":Lcom/j256/ormlite/stmt/QueryBuilder$JoinInfo;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>.JoinInfo;"
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 373
    invoke-super {p0}, Lcom/j256/ormlite/stmt/StatementBuilder;->clear()V

    .line 374
    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->distinct:Z

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectIdColumn:Z

    .line 376
    iput-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumnList:Ljava/util/List;

    .line 377
    iput-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRawList:Ljava/util/List;

    .line 378
    iput-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    .line 379
    iput-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw:Ljava/lang/String;

    .line 380
    iput-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    .line 381
    iput-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByRaw:Ljava/lang/String;

    .line 382
    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->isInnerQuery:Z

    .line 383
    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->isCountOfQuery:Z

    .line 384
    iput-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->having:Ljava/lang/String;

    .line 385
    iput-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->limit:Ljava/lang/Long;

    .line 386
    iput-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->offset:Ljava/lang/Long;

    .line 387
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 390
    iput-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    .line 392
    :cond_0
    iput-boolean v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->addTableName:Z

    .line 393
    return-void
.end method

.method public countOf()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->setCountOf(Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 368
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->countOf(Lcom/j256/ormlite/stmt/PreparedQuery;)J

    move-result-wide v0

    return-wide v0
.end method

.method public distinct()Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->distinct:Z

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectIdColumn:Z

    .line 240
    return-object p0
.end method

.method enableInnerQuery()V
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->isInnerQuery:Z

    .line 68
    return-void
.end method

.method protected getResultFieldTypes()[Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .prologue
    .line 429
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->resultFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method getSelectColumnCount()I
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->isCountOfQuery:Z

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRawList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRawList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRawList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumnList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 79
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumnList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method getSelectColumns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->isCountOfQuery:Z

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "COUNT(*)"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRawList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRawList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRawList:Ljava/util/List;

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumnList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumnList:Ljava/util/List;

    goto :goto_0
.end method

.method public groupBy(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->verifyColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .line 169
    .local v0, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t groupBy foreign colletion field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectIdColumn:Z

    .line 177
    return-object p0
.end method

.method public groupByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 0
    .param p1, "rawSql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iput-object p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->groupByRaw:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public having(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 0
    .param p1, "having"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iput-object p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->having:Ljava/lang/String;

    .line 302
    return-object p0
.end method

.method public iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->iterator(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public join(Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<**>;)",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p1, "joinedQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    const-string v0, "INNER"

    invoke-direct {p0, v0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->addJoinInfo(Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)V

    .line 312
    return-object p0
.end method

.method public leftJoin(Lcom/j256/ormlite/stmt/QueryBuilder;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<**>;)",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p1, "joinedQueryBuilder":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<**>;"
    const-string v0, "LEFT"

    invoke-direct {p0, v0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->addJoinInfo(Ljava/lang/String;Lcom/j256/ormlite/stmt/QueryBuilder;)V

    .line 324
    return-object p0
.end method

.method public limit(I)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 2
    .param p1, "maxRows"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 0
    .param p1, "maxRows"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iput-object p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->limit:Ljava/lang/Long;

    .line 256
    return-object p0
.end method

.method public offset(I)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 2
    .param p1, "startRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public offset(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 2
    .param p1, "startRow"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-interface {v0}, Lcom/j256/ormlite/db/DatabaseType;->isOffsetSqlSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iput-object p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->offset:Ljava/lang/Long;

    .line 280
    return-object p0

    .line 282
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Offset is not supported by this database"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "ascending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/QueryBuilder;->verifyColumnName(Ljava/lang/String;)Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .line 194
    .local v0, "fieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v0}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t orderBy foreign colletion field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByList:Ljava/util/List;

    new-instance v2, Lcom/j256/ormlite/stmt/query/OrderBy;

    invoke-direct {v2, p1, p2}, Lcom/j256/ormlite/stmt/query/OrderBy;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-object p0
.end method

.method public orderByRaw(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 1
    .param p1, "rawSql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    const/4 v0, 0x0

    check-cast v0, [Lcom/j256/ormlite/stmt/ArgumentHolder;

    invoke-virtual {p0, p1, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw(Ljava/lang/String;[Lcom/j256/ormlite/stmt/ArgumentHolder;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs orderByRaw(Ljava/lang/String;[Lcom/j256/ormlite/stmt/ArgumentHolder;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 0
    .param p1, "rawSql"    # Ljava/lang/String;
    .param p2, "args"    # [Lcom/j256/ormlite/stmt/ArgumentHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iput-object p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByRaw:Ljava/lang/String;

    .line 225
    iput-object p2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->orderByArgs:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    .line 226
    return-object p0
.end method

.method public prepare()Lcom/j256/ormlite/stmt/PreparedQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->limit:Ljava/lang/Long;

    invoke-super {p0, v0}, Lcom/j256/ormlite/stmt/StatementBuilder;->prepareStatement(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;

    move-result-object v0

    return-object v0
.end method

.method public query()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->queryForFirst(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public queryRaw()Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/GenericRawResults",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    return-object v0
.end method

.method public queryRawFirst()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public selectColumns(Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    .local p1, "columns":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumnList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumnList:Ljava/util/List;

    .line 137
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    .local v0, "column":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->addSelectColumnToList(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    .end local v0    # "column":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public varargs selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 5
    .param p1, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v4, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumnList:Ljava/util/List;

    if-nez v4, :cond_0

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumnList:Ljava/util/List;

    .line 123
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 124
    .local v1, "column":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->addSelectColumnToList(Ljava/lang/String;)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "column":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public varargs selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 5
    .param p1, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v4, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRawList:Ljava/util/List;

    if-nez v4, :cond_0

    .line 150
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRawList:Ljava/util/List;

    .line 152
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 153
    .local v1, "column":Ljava/lang/String;
    iget-object v4, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRawList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v1    # "column":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public setCountOf(Z)Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 0
    .param p1, "countOf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iput-boolean p1, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->isCountOfQuery:Z

    .line 294
    return-object p0
.end method

.method protected shouldPrependTableNameToColumns()Z
    .locals 1

    .prologue
    .line 463
    .local p0, "this":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/QueryBuilder;->joinList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
