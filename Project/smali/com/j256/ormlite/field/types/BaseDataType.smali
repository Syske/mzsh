.class public abstract Lcom/j256/ormlite/field/types/BaseDataType;
.super Lcom/j256/ormlite/field/BaseFieldConverter;
.source "BaseDataType.java"

# interfaces
.implements Lcom/j256/ormlite/field/DataPersister;


# instance fields
.field private final classes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final sqlType:Lcom/j256/ormlite/field/SqlType;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "sqlType"    # Lcom/j256/ormlite/field/SqlType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/SqlType;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/j256/ormlite/field/BaseFieldConverter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/j256/ormlite/field/types/BaseDataType;->sqlType:Lcom/j256/ormlite/field/SqlType;

    .line 46
    iput-object p2, p0, Lcom/j256/ormlite/field/types/BaseDataType;->classes:[Ljava/lang/Class;

    .line 47
    return-void
.end method


# virtual methods
.method public convertIdNumber(Ljava/lang/Number;)Ljava/lang/Object;
    .locals 1
    .param p1, "number"    # Ljava/lang/Number;

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public dataIsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "fieldObj1"    # Ljava/lang/Object;
    .param p2, "fieldObj2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 144
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    if-eqz p2, :cond_0

    .line 148
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public generateId()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not have tried to generate this type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAssociatedClassNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssociatedClasses()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->classes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getDefaultWidth()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getPrimaryClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->classes:[Ljava/lang/Class;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->classes:[Ljava/lang/Class;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getSqlType()Lcom/j256/ormlite/field/SqlType;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->sqlType:Lcom/j256/ormlite/field/SqlType;

    return-object v0
.end method

.method public isAppropriateId()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isArgumentHolderRequired()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public isComparable()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public isEscapedDefaultValue()Z
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/j256/ormlite/field/types/BaseDataType;->isEscapedValue()Z

    move-result v0

    return v0
.end method

.method public isEscapedValue()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public isSelfGeneratedId()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public isValidForField(Ljava/lang/reflect/Field;)Z
    .locals 6
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v4, 0x1

    .line 55
    iget-object v5, p0, Lcom/j256/ormlite/field/types/BaseDataType;->classes:[Ljava/lang/Class;

    array-length v5, v5

    if-nez v5, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v4

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/field/types/BaseDataType;->classes:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 60
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isValidForVersion()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public isValidGeneratedType()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public makeConfigObject(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "currentValue"    # Ljava/lang/Object;

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public resultStringToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldType"    # Lcom/j256/ormlite/field/FieldType;
    .param p2, "stringValue"    # Ljava/lang/String;
    .param p3, "columnPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseDataType;->parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
