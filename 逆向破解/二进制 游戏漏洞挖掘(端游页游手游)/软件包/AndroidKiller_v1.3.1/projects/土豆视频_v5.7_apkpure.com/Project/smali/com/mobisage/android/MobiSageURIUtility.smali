.class public abstract Lcom/mobisage/android/MobiSageURIUtility;
.super Ljava/lang/Object;
.source "MobiSageURIUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "old"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v5, "a1d6s8a9gde"

    .line 77
    .local v5, "key":Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v11, ""

    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 78
    :cond_0
    const-string v7, ""

    .line 97
    :goto_0
    return-object v7

    .line 80
    :cond_1
    const/4 v7, 0x0

    .line 82
    .local v7, "newStr":Ljava/lang/String;
    :try_start_0
    const-string v11, "UTF-8"

    invoke-virtual {v5, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 83
    .local v6, "keyData":[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    new-array v9, v11, [B

    .line 84
    .local v9, "strData":[B
    const/4 v3, 0x0

    .line 85
    .local v3, "i":I
    const/4 v10, 0x0

    .local v10, "x":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 86
    add-int/lit8 v11, v10, 0x2

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 87
    .local v8, "s":Ljava/lang/String;
    const/16 v11, 0x10

    invoke-static {v8, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, "a":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    array-length v11, v6

    rem-int v11, v4, v11

    aget-byte v11, v6, v11

    xor-int/2addr v11, v0

    int-to-byte v1, v11

    .line 89
    .local v1, "b":B
    div-int/lit8 v11, v10, 0x2

    aput-byte v1, v9, v11

    .line 85
    add-int/lit8 v10, v10, 0x2

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 91
    .end local v0    # "a":I
    .end local v1    # "b":B
    .end local v8    # "s":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/String;

    .end local v7    # "newStr":Ljava/lang/String;
    const-string v11, "UTF-8"

    invoke-direct {v7, v9, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v7    # "newStr":Ljava/lang/String;
    goto :goto_0

    .line 92
    .end local v4    # "i":I
    .end local v6    # "keyData":[B
    .end local v7    # "newStr":Ljava/lang/String;
    .end local v9    # "strData":[B
    .end local v10    # "x":I
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v7, ""

    .line 96
    .restart local v7    # "newStr":Ljava/lang/String;
    goto :goto_0

    .line 94
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "newStr":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, ""

    .restart local v7    # "newStr":Ljava/lang/String;
    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string v2, "a1d6s8a9gde"

    .line 110
    .local v2, "key":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v5, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 113
    .local v0, "data":[B
    const-string v6, "UTF-8"

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 114
    .local v3, "keyData":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 115
    const-string v6, "%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-byte v9, v0, v1

    and-int/lit16 v9, v9, 0xff

    array-length v10, v3

    rem-int v10, v1, v10

    aget-byte v10, v3, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "data":[B
    .end local v1    # "i":I
    .end local v3    # "keyData":[B
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 124
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 119
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public static parserTrackURL(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "trackURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "&"

    invoke-direct {v2, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v2, "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "url":Ljava/lang/String;
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 59
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v0    # "index":I
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static parserURIQuery(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p0, "queryText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 18
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 19
    .local v2, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 21
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 23
    .local v4, "token":C
    sparse-switch v4, :sswitch_data_0

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :sswitch_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v6, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 29
    :sswitch_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v6, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 37
    .end local v4    # "token":C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    return-object v2

    .line 23
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_1
        0x3d -> :sswitch_0
    .end sparse-switch
.end method
