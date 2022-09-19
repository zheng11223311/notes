.class public Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;
.super Ljava/lang/Object;
.source "UnrecognizedExtraField.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/extra/ZipExtraField;


# instance fields
.field private centralData:[B

.field private headerId:Lcom/corncop/capricornus/zip/extra/ZipShort;

.field private localData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copy([B)[B
    .locals 3
    .param p0, "from"    # [B

    .prologue
    const/4 v2, 0x0

    .line 171
    if-eqz p0, :cond_0

    .line 172
    array-length v1, p0

    new-array v0, v1, [B

    .line 173
    .local v0, "to":[B
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    .end local v0    # "to":[B
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->centralData:[B

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->centralData:[B

    invoke-static {v0}, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->copy([B)[B

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->getLocalFileDataData()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getCentralDirectoryLength()Lcom/corncop/capricornus/zip/extra/ZipShort;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->centralData:[B

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/corncop/capricornus/zip/extra/ZipShort;

    iget-object v1, p0, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->centralData:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/corncop/capricornus/zip/extra/ZipShort;-><init>(I)V

    .line 124
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->getLocalFileDataLength()Lcom/corncop/capricornus/zip/extra/ZipShort;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderId()Lcom/corncop/capricornus/zip/extra/ZipShort;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->headerId:Lcom/corncop/capricornus/zip/extra/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->localData:[B

    invoke-static {v0}, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->copy([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getLocalFileDataLength()Lcom/corncop/capricornus/zip/extra/ZipShort;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lcom/corncop/capricornus/zip/extra/ZipShort;

    iget-object v1, p0, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->localData:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/corncop/capricornus/zip/extra/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 158
    new-array v0, p3, [B

    .line 159
    .local v0, "tmp":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->setCentralDirectoryData([B)V

    .line 161
    iget-object v1, p0, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->localData:[B

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->setLocalFileDataData([B)V

    .line 164
    :cond_0
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 146
    new-array v0, p3, [B

    .line 147
    .local v0, "tmp":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->setLocalFileDataData([B)V

    .line 149
    return-void
.end method

.method public setCentralDirectoryData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 111
    invoke-static {p1}, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->copy([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->centralData:[B

    .line 112
    return-void
.end method

.method public setHeaderId(Lcom/corncop/capricornus/zip/extra/ZipShort;)V
    .locals 0
    .param p1, "headerId"    # Lcom/corncop/capricornus/zip/extra/ZipShort;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->headerId:Lcom/corncop/capricornus/zip/extra/ZipShort;

    .line 50
    return-void
.end method

.method public setLocalFileDataData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 76
    invoke-static {p1}, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->copy([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/corncop/capricornus/zip/extra/UnrecognizedExtraField;->localData:[B

    .line 77
    return-void
.end method
