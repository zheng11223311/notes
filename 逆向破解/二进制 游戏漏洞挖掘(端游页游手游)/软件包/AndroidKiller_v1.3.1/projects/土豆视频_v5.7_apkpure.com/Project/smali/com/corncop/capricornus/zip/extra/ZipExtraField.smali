.class public interface abstract Lcom/corncop/capricornus/zip/extra/ZipExtraField;
.super Ljava/lang/Object;
.source "ZipExtraField.java"


# virtual methods
.method public abstract getCentralDirectoryData()[B
.end method

.method public abstract getCentralDirectoryLength()Lcom/corncop/capricornus/zip/extra/ZipShort;
.end method

.method public abstract getHeaderId()Lcom/corncop/capricornus/zip/extra/ZipShort;
.end method

.method public abstract getLocalFileDataData()[B
.end method

.method public abstract getLocalFileDataLength()Lcom/corncop/capricornus/zip/extra/ZipShort;
.end method

.method public abstract parseFromLocalFileData([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation
.end method
