.class public Lv/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lv/i;

    invoke-direct {v0}, Lv/i;-><init>()V

    .line 128
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 129
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 131
    new-instance v3, Lv/j;

    invoke-direct {v3, v2}, Lv/j;-><init>(Ljava/io/Writer;)V

    invoke-interface {v0, v1, v3}, Lv/n;->a(Ljava/io/Reader;Lv/m;)V

    .line 132
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public a(Ljava/io/Reader;Lv/m;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 56
    const/4 v0, 0x0

    move v1, v2

    .line 58
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 59
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 60
    if-eqz v0, :cond_0

    array-length v7, v0

    if-ge v7, v6, :cond_1

    .line 61
    :cond_0
    new-array v0, v6, [C

    .line 63
    :cond_1
    invoke-virtual {v5, v2, v6, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 64
    aget-char v7, v0, v2

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    .line 66
    :sswitch_0
    if-eqz v1, :cond_2

    .line 67
    invoke-interface {p2, v0, v2, v2}, Lv/m;->n([CII)V

    .line 70
    :cond_2
    add-int/lit8 v1, v6, -0x1

    invoke-interface {p2, v0, v3, v1}, Lv/m;->i([CII)V

    move v1, v3

    .line 72
    goto :goto_0

    .line 74
    :sswitch_1
    if-eqz v1, :cond_3

    .line 75
    invoke-interface {p2, v0, v2, v2}, Lv/m;->n([CII)V

    move v1, v2

    .line 78
    :cond_3
    add-int/lit8 v5, v6, -0x1

    invoke-interface {p2, v0, v3, v5}, Lv/m;->g([CII)V

    goto :goto_0

    .line 81
    :sswitch_2
    if-eqz v1, :cond_4

    .line 82
    invoke-interface {p2, v0, v2, v2}, Lv/m;->n([CII)V

    move v1, v2

    .line 85
    :cond_4
    add-int/lit8 v5, v6, -0x1

    invoke-interface {p2, v0, v3, v5}, Lv/m;->m([CII)V

    goto :goto_0

    .line 88
    :sswitch_3
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 89
    add-int/lit8 v7, v5, -0x1

    invoke-interface {p2, v0, v3, v7}, Lv/m;->b([CII)V

    .line 90
    add-int/lit8 v7, v5, 0x1

    sub-int v5, v6, v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p2, v0, v7, v5}, Lv/m;->c([CII)V

    goto :goto_0

    .line 93
    :sswitch_4
    if-eqz v1, :cond_5

    .line 94
    invoke-interface {p2, v0, v2, v2}, Lv/m;->n([CII)V

    move v1, v2

    .line 97
    :cond_5
    const-string v7, "-\\n"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 98
    const/16 v5, 0xa

    aput-char v5, v0, v2

    .line 99
    invoke-interface {p2, v0, v2, v3}, Lv/m;->k([CII)V

    goto :goto_0

    .line 103
    :cond_6
    add-int/lit8 v5, v6, -0x1

    invoke-interface {p2, v0, v3, v5}, Lv/m;->k([CII)V

    goto :goto_0

    .line 107
    :sswitch_5
    if-eqz v1, :cond_7

    .line 108
    invoke-interface {p2, v0, v2, v2}, Lv/m;->n([CII)V

    move v1, v2

    .line 111
    :cond_7
    add-int/lit8 v5, v6, -0x1

    invoke-interface {p2, v0, v3, v5}, Lv/m;->e([CII)V

    goto :goto_0

    .line 120
    :cond_8
    invoke-interface {p2, v0, v2, v2}, Lv/m;->f([CII)V

    .line 121
    return-void

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2d -> :sswitch_4
        0x3f -> :sswitch_2
        0x41 -> :sswitch_3
        0x45 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
