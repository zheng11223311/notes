.class public Lcom/corncop/capricornus/zip/extra/AsiExtraField;
.super Ljava/lang/Object;
.source "AsiExtraField.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/extra/ZipExtraField;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final HEADER_ID:Lcom/corncop/capricornus/zip/extra/ZipShort;

.field private static final WORD:I = 0x4


# instance fields
.field DEFAULT_DIR_PERM:I

.field DEFAULT_FILE_PERM:I

.field DEFAULT_LINK_PERM:I

.field DIR_FLAG:I

.field FILE_FLAG:I

.field LINK_FLAG:I

.field PERM_MASK:I

.field private crc:Ljava/util/zip/CRC32;

.field private dirFlag:Z

.field private gid:I

.field private link:Ljava/lang/String;

.field private mode:I

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/corncop/capricornus/zip/extra/ZipShort;

    const/16 v1, 0x756e

    invoke-direct {v0, v1}, Lcom/corncop/capricornus/zip/extra/ZipShort;-><init>(I)V

    sput-object v0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->HEADER_ID:Lcom/corncop/capricornus/zip/extra/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v0, 0xfff

    iput v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->PERM_MASK:I

    .line 76
    const v0, 0xa000

    iput v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->LINK_FLAG:I

    .line 82
    const v0, 0x8000

    iput v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->FILE_FLAG:I

    .line 88
    const/16 v0, 0x4000

    iput v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->DIR_FLAG:I

    .line 100
    const/16 v0, 0x1ff

    iput v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->DEFAULT_LINK_PERM:I

    .line 106
    const/16 v0, 0x1ed

    iput v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->DEFAULT_DIR_PERM:I

    .line 112
    const/16 v0, 0x1a4

    iput v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->DEFAULT_FILE_PERM:I

    .line 121
    iput v1, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->mode:I

    .line 127
    iput v1, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->uid:I

    .line 133
    iput v1, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->gid:I

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->link:Ljava/lang/String;

    .line 149
    iput-boolean v1, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->dirFlag:Z

    .line 156
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    .line 160
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 424
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;

    .line 425
    .local v0, "cloned":Lcom/corncop/capricornus/zip/extra/AsiExtraField;
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v2, v0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->crc:Ljava/util/zip/CRC32;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    return-object v0

    .line 428
    .end local v0    # "cloned":Lcom/corncop/capricornus/zip/extra/AsiExtraField;
    :catch_0
    move-exception v1

    .line 430
    .local v1, "cnfe":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCentralDirectoryData()[B
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->getLocalFileDataData()[B

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectoryLength()Lcom/corncop/capricornus/zip/extra/ZipShort;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->getLocalFileDataLength()Lcom/corncop/capricornus/zip/extra/ZipShort;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->gid:I

    return v0
.end method

.method public getHeaderId()Lcom/corncop/capricornus/zip/extra/ZipShort;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->HEADER_ID:Lcom/corncop/capricornus/zip/extra/ZipShort;

    return-object v0
.end method

.method public getLinkedFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->getLocalFileDataLength()Lcom/corncop/capricornus/zip/extra/ZipShort;

    move-result-object v5

    invoke-virtual {v5}, Lcom/corncop/capricornus/zip/extra/ZipShort;->getValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    new-array v2, v5, [B

    .line 209
    .local v2, "data":[B
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/corncop/capricornus/zip/extra/ZipShort;->getBytes(I)[B

    move-result-object v5

    invoke-static {v5, v8, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 213
    .local v3, "linkArray":[B
    array-length v5, v3

    int-to-long v6, v5

    invoke-static {v6, v7}, Lcom/corncop/capricornus/zip/extra/ZipLong;->getBytes(J)[B

    move-result-object v5

    invoke-static {v5, v8, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->getUserId()I

    move-result v5

    invoke-static {v5}, Lcom/corncop/capricornus/zip/extra/ZipShort;->getBytes(I)[B

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v5, v8, v2, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->getGroupId()I

    move-result v5

    invoke-static {v5}, Lcom/corncop/capricornus/zip/extra/ZipShort;->getBytes(I)[B

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v5, v8, v2, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    const/16 v5, 0xa

    array-length v6, v3

    invoke-static {v3, v8, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget-object v5, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    .line 225
    iget-object v5, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 226
    iget-object v5, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    .line 228
    .local v0, "checksum":J
    array-length v5, v2

    add-int/lit8 v5, v5, 0x4

    new-array v4, v5, [B

    .line 229
    .local v4, "result":[B
    invoke-static {v0, v1}, Lcom/corncop/capricornus/zip/extra/ZipLong;->getBytes(J)[B

    move-result-object v5

    invoke-static {v5, v8, v4, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    array-length v5, v2

    invoke-static {v2, v8, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    return-object v4
.end method

.method public getLocalFileDataLength()Lcom/corncop/capricornus/zip/extra/ZipShort;
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/corncop/capricornus/zip/extra/ZipShort;

    .line 185
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Lcom/corncop/capricornus/zip/extra/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->mode:I

    return v0
.end method

.method protected getMode(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 411
    iget v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->FILE_FLAG:I

    .line 412
    .local v0, "type":I
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->isLink()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    iget v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->LINK_FLAG:I

    .line 418
    :cond_0
    :goto_0
    iget v1, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->PERM_MASK:I

    and-int/2addr v1, p1

    or-int/2addr v1, v0

    return v1

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iget v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->DIR_FLAG:I

    goto :goto_0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->uid:I

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->dirFlag:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->isLink()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLink()Z
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseFromLocalFileData([BII)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 372
    invoke-static {p1, p2}, Lcom/corncop/capricornus/zip/extra/ZipLong;->getValue([BI)J

    move-result-wide v0

    .line 373
    .local v0, "givenChecksum":J
    add-int/lit8 v8, p3, -0x4

    new-array v6, v8, [B

    .line 374
    .local v6, "tmp":[B
    add-int/lit8 v8, p2, 0x4

    add-int/lit8 v9, p3, -0x4

    invoke-static {p1, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    iget-object v8, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->reset()V

    .line 376
    iget-object v8, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8, v6}, Ljava/util/zip/CRC32;->update([B)V

    .line 377
    iget-object v8, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    .line 378
    .local v4, "realChecksum":J
    cmp-long v8, v0, v4

    if-eqz v8, :cond_0

    .line 379
    new-instance v7, Ljava/util/zip/ZipException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bad CRC checksum "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 380
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " instead of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 382
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 385
    :cond_0
    invoke-static {v6, v7}, Lcom/corncop/capricornus/zip/extra/ZipShort;->getValue([BI)I

    move-result v3

    .line 387
    .local v3, "newMode":I
    const/4 v8, 0x2

    invoke-static {v6, v8}, Lcom/corncop/capricornus/zip/extra/ZipLong;->getValue([BI)J

    move-result-wide v8

    long-to-int v8, v8

    new-array v2, v8, [B

    .line 388
    .local v2, "linkArray":[B
    const/4 v8, 0x6

    invoke-static {v6, v8}, Lcom/corncop/capricornus/zip/extra/ZipShort;->getValue([BI)I

    move-result v8

    iput v8, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->uid:I

    .line 389
    const/16 v8, 0x8

    invoke-static {v6, v8}, Lcom/corncop/capricornus/zip/extra/ZipShort;->getValue([BI)I

    move-result v8

    iput v8, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->gid:I

    .line 391
    array-length v8, v2

    if-nez v8, :cond_2

    .line 392
    const-string v8, ""

    iput-object v8, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->link:Ljava/lang/String;

    .line 399
    :goto_0
    iget v8, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->DIR_FLAG:I

    and-int/2addr v8, v3

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    :cond_1
    invoke-virtual {p0, v7}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->setDirectory(Z)V

    .line 400
    invoke-virtual {p0, v3}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->setMode(I)V

    .line 401
    return-void

    .line 395
    :cond_2
    const/16 v8, 0xa

    array-length v9, v2

    invoke-static {v6, v8, v2, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v8, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->link:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDirectory(Z)V
    .locals 1
    .param p1, "dirFlag"    # Z

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->dirFlag:Z

    .line 347
    iget v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->mode:I

    invoke-virtual {p0, v0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->mode:I

    .line 348
    return-void
.end method

.method public setGroupId(I)V
    .locals 0
    .param p1, "gid"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->gid:I

    .line 272
    return-void
.end method

.method public setLinkedFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->link:Ljava/lang/String;

    .line 294
    iget v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->mode:I

    invoke-virtual {p0, v0}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->mode:I

    .line 295
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->mode:I

    .line 327
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/corncop/capricornus/zip/extra/AsiExtraField;->uid:I

    .line 252
    return-void
.end method
