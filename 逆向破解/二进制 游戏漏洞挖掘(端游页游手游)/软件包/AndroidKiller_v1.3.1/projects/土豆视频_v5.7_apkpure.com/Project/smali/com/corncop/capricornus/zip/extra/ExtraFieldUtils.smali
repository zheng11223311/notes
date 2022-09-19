.class public Lcom/corncop/capricornus/zip/extra/ExtraFieldUtils;
.super Ljava/lang/Object;
.source "ExtraFieldUtils.java"


# static fields
.field private static final WORD:I = 0x4

.field private static final implementations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/corncop/capricornus/zip/extra/ZipShort;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/corncop/capricornus/zip/extra/ExtraFieldUtils;->implementations:Ljava/util/Map;

    .line 49
    const-class v0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;

    invoke-static {v0}, Lcom/corncop/capricornus/zip/extra/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExtraField(Lcom/corncop/capricornus/zip/extra/ZipShort;)Lcom/corncop/capricornus/zip/extra/ZipExtraField;
    .locals 3
    .param p0, "headerId"    # Lcom/corncop/capricornus/zip/extra/ZipShort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 90
    sget-object v2, Lcom/corncop/capricornus/zip/extra/ExtraFieldUtils;->implementations:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 91
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corncop/capricornus/zip/extra/ZipExtraField;

    .line 96
    :goto_0
    return-object v2

    .line 94
    :cond_0
    new-instance v1, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;

    invoke-direct {v1}, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;-><init>()V

    .line 95
    .local v1, "u":Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;
    invoke-virtual {v1, p0}, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->setHeaderId(Lcom/corncop/capricornus/zip/extra/ZipShort;)V

    move-object v2, v1

    .line 96
    goto :goto_0
.end method

.method public static mergeLocalFileDataData(Ljava/util/List;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/corncop/capricornus/zip/extra/ZipExtraField;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/corncop/capricornus/zip/extra/ZipExtraField;>;"
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 155
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 157
    .local v2, "regularExtraFieldCount":I
    mul-int/lit8 v5, v2, 0x4

    .line 158
    .local v5, "sum":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corncop/capricornus/zip/extra/ZipExtraField;

    .line 159
    .local v0, "element":Lcom/corncop/capricornus/zip/extra/ZipExtraField;
    invoke-interface {v0}, Lcom/corncop/capricornus/zip/extra/ZipExtraField;->getLocalFileDataLength()Lcom/corncop/capricornus/zip/extra/ZipShort;

    move-result-object v7

    invoke-virtual {v7}, Lcom/corncop/capricornus/zip/extra/ZipShort;->getValue()I

    move-result v7

    add-int/2addr v5, v7

    .line 160
    goto :goto_0

    .line 162
    .end local v0    # "element":Lcom/corncop/capricornus/zip/extra/ZipExtraField;
    :cond_0
    new-array v3, v5, [B

    .line 163
    .local v3, "result":[B
    const/4 v4, 0x0

    .line 164
    .local v4, "start":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corncop/capricornus/zip/extra/ZipExtraField;

    .line 165
    .restart local v0    # "element":Lcom/corncop/capricornus/zip/extra/ZipExtraField;
    invoke-interface {v0}, Lcom/corncop/capricornus/zip/extra/ZipExtraField;->getHeaderId()Lcom/corncop/capricornus/zip/extra/ZipShort;

    move-result-object v7

    invoke-virtual {v7}, Lcom/corncop/capricornus/zip/extra/ZipShort;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v9, v3, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    invoke-interface {v0}, Lcom/corncop/capricornus/zip/extra/ZipExtraField;->getLocalFileDataLength()Lcom/corncop/capricornus/zip/extra/ZipShort;

    move-result-object v7

    invoke-virtual {v7}, Lcom/corncop/capricornus/zip/extra/ZipShort;->getBytes()[B

    move-result-object v7

    add-int/lit8 v8, v4, 0x2

    invoke-static {v7, v9, v3, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    invoke-interface {v0}, Lcom/corncop/capricornus/zip/extra/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v1

    .line 170
    .local v1, "local":[B
    add-int/lit8 v7, v4, 0x4

    array-length v8, v1

    invoke-static {v1, v9, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    array-length v7, v1

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v4, v7

    .line 172
    goto :goto_1

    .line 173
    .end local v0    # "element":Lcom/corncop/capricornus/zip/extra/ZipExtraField;
    .end local v1    # "local":[B
    :cond_1
    return-object v3
.end method

.method public static parse([B)Ljava/util/List;
    .locals 10
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/corncop/capricornus/zip/extra/ZipExtraField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v5, "v":Ljava/util/List;, "Ljava/util/List<Lcom/corncop/capricornus/zip/extra/ZipExtraField;>;"
    if-nez p0, :cond_1

    .line 144
    :cond_0
    return-object v5

    .line 119
    :cond_1
    const/4 v4, 0x0

    .line 120
    .local v4, "start":I
    :goto_0
    array-length v7, p0

    add-int/lit8 v7, v7, -0x4

    if-gt v4, v7, :cond_0

    .line 121
    new-instance v0, Lcom/corncop/capricornus/zip/extra/ZipShort;

    invoke-direct {v0, p0, v4}, Lcom/corncop/capricornus/zip/extra/ZipShort;-><init>([BI)V

    .line 122
    .local v0, "headerId":Lcom/corncop/capricornus/zip/extra/ZipShort;
    new-instance v7, Lcom/corncop/capricornus/zip/extra/ZipShort;

    add-int/lit8 v8, v4, 0x2

    invoke-direct {v7, p0, v8}, Lcom/corncop/capricornus/zip/extra/ZipShort;-><init>([BI)V

    invoke-virtual {v7}, Lcom/corncop/capricornus/zip/extra/ZipShort;->getValue()I

    move-result v3

    .line 123
    .local v3, "length":I
    add-int/lit8 v7, v4, 0x4

    add-int/2addr v7, v3

    array-length v8, p0

    if-le v7, v8, :cond_2

    .line 124
    new-instance v7, Ljava/util/zip/ZipException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad extra field starting at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".  Block length of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes exceeds remaining"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " data of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p0

    sub-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 132
    :cond_2
    :try_start_0
    invoke-static {v0}, Lcom/corncop/capricornus/zip/extra/ExtraFieldUtils;->createExtraField(Lcom/corncop/capricornus/zip/extra/ZipShort;)Lcom/corncop/capricornus/zip/extra/ZipExtraField;

    move-result-object v6

    .line 133
    .local v6, "ze":Lcom/corncop/capricornus/zip/extra/ZipExtraField;
    add-int/lit8 v7, v4, 0x4

    invoke-interface {v6, p0, v7, v3}, Lcom/corncop/capricornus/zip/extra/ZipExtraField;->parseFromLocalFileData([BII)V

    .line 134
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    add-int/lit8 v7, v3, 0x4

    add-int/2addr v4, v7

    .line 143
    goto :goto_0

    .line 136
    .end local v6    # "ze":Lcom/corncop/capricornus/zip/extra/ZipExtraField;
    :catch_0
    move-exception v2

    .line 137
    .local v2, "ie":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/util/zip/ZipException;

    invoke-virtual {v2}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 139
    .end local v2    # "ie":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 140
    .local v1, "iae":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static parseA([B)[Lcom/corncop/capricornus/zip/extra/ZipExtraField;
    .locals 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p0}, Lcom/corncop/capricornus/zip/extra/ExtraFieldUtils;->parse([B)Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Lcom/corncop/capricornus/zip/extra/ZipExtraField;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Lcom/corncop/capricornus/zip/extra/ZipExtraField;

    .line 102
    .local v0, "result":[Lcom/corncop/capricornus/zip/extra/ZipExtraField;
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/corncop/capricornus/zip/extra/ZipExtraField;

    return-object v2
.end method

.method public static register(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/corncop/capricornus/zip/extra/ZipExtraField;

    .line 66
    .local v2, "ze":Lcom/corncop/capricornus/zip/extra/ZipExtraField;
    sget-object v3, Lcom/corncop/capricornus/zip/extra/ExtraFieldUtils;->implementations:Ljava/util/Map;

    invoke-interface {v2}, Lcom/corncop/capricornus/zip/extra/ZipExtraField;->getHeaderId()Lcom/corncop/capricornus/zip/extra/ZipShort;

    move-result-object v4

    invoke-interface {v3, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 77
    return-void

    .line 68
    .end local v2    # "ze":Lcom/corncop/capricornus/zip/extra/ZipExtraField;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "cc":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t implement ZipExtraField"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    .end local v0    # "cc":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 72
    .local v1, "ie":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a concrete class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    .end local v1    # "ie":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 75
    .local v1, "ie":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'s no-arg constructor is not public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
