.class public Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/SQLiteHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleTableDB"
.end annotation


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private fieldLimits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private fieldTypes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private primary:Ljava/lang/String;

.field private primaryAutoincrement:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->name:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldTypes:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldLimits:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mob/tools/utils/SQLiteHelper$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/mob/tools/utils/SQLiteHelper$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->open()V

    return-void
.end method

.method static synthetic access$200(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;)V
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;

    .prologue
    invoke-direct {p0}, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->close()V

    return-void
.end method

.method private close()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    return-void
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->name:Ljava/lang/String;

    return-object v0
.end method

.method private open()V
    .locals 15

    .prologue
    iget-object v12, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v12, :cond_7

    new-instance v4, Ljava/io/File;

    iget-object v12, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->path:Ljava/lang/String;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "file":Ljava/io/File;
    const/4 v12, 0x0

    invoke-static {v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    iput-object v12, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "select count(*) from sqlite_master where type =\'table\' and name =\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "sql":Ljava/lang/String;
    iget-object v12, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x1

    .local v9, "shouldCreate":Z
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-lez v12, :cond_0

    const/4 v9, 0x0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v9, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .local v8, "sb":Ljava/lang/StringBuilder;
    const-string v12, "create table  "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldTypes:Ljava/util/LinkedHashMap;

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "field":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .local v11, "type":Ljava/lang/String;
    iget-object v12, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldLimits:Ljava/util/HashMap;

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .local v6, "notNull":Z
    iget-object v12, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->primary:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .local v7, "primary":Z
    if-eqz v7, :cond_2

    iget-boolean v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->primaryAutoincrement:Z

    .local v0, "autoincrement":Z
    :goto_1
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_3

    const-string v12, " not null"

    :goto_2
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_4

    const-string v12, " primary key"

    :goto_3
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    const-string v12, " autoincrement,"

    :goto_4
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0    # "autoincrement":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "autoincrement":Z
    :cond_3
    const-string v12, ""

    goto :goto_2

    :cond_4
    const-string v12, ""

    goto :goto_3

    :cond_5
    const-string v12, ","

    goto :goto_4

    .end local v0    # "autoincrement":Z
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "field":Ljava/lang/String;
    .end local v6    # "notNull":Z
    .end local v7    # "primary":Z
    .end local v11    # "type":Ljava/lang/String;
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const-string v14, ");"

    invoke-virtual {v8, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "shouldCreate":Z
    .end local v10    # "sql":Ljava/lang/String;
    :cond_7
    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldType"    # Ljava/lang/String;
    .param p3, "notNull"    # Z

    .prologue
    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldTypes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->fieldLimits:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setPrimary(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "autoincrement"    # Z

    .prologue
    iput-object p1, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->primary:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/mob/tools/utils/SQLiteHelper$SingleTableDB;->primaryAutoincrement:Z

    return-void
.end method
