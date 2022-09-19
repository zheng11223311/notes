.class Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;
.super Ljava/lang/Object;
.source "ZipEntryOrInfoAdapter.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/ZipEntryCallback;
.implements Lcom/corncop/capricornus/zip/ZipInfoCallback;


# instance fields
.field private final entryCallback:Lcom/corncop/capricornus/zip/ZipEntryCallback;

.field private final infoCallback:Lcom/corncop/capricornus/zip/ZipInfoCallback;


# direct methods
.method public constructor <init>(Lcom/corncop/capricornus/zip/ZipEntryCallback;Lcom/corncop/capricornus/zip/ZipInfoCallback;)V
    .locals 2
    .param p1, "entryCallback"    # Lcom/corncop/capricornus/zip/ZipEntryCallback;
    .param p2, "infoCallback"    # Lcom/corncop/capricornus/zip/ZipInfoCallback;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one of ZipEntryCallback and ZipInfoCallback must be specified together"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_2
    iput-object p1, p0, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;->entryCallback:Lcom/corncop/capricornus/zip/ZipEntryCallback;

    .line 17
    iput-object p2, p0, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;->infoCallback:Lcom/corncop/capricornus/zip/ZipInfoCallback;

    .line 18
    return-void
.end method


# virtual methods
.method public process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;->entryCallback:Lcom/corncop/capricornus/zip/ZipEntryCallback;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;->entryCallback:Lcom/corncop/capricornus/zip/ZipEntryCallback;

    invoke-interface {v0, p1, p2}, Lcom/corncop/capricornus/zip/ZipEntryCallback;->process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0, p2}, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;->process(Ljava/util/zip/ZipEntry;)V

    goto :goto_0
.end method

.method public process(Ljava/util/zip/ZipEntry;)V
    .locals 1
    .param p1, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ZipEntryOrInfoAdapter;->infoCallback:Lcom/corncop/capricornus/zip/ZipInfoCallback;

    invoke-interface {v0, p1}, Lcom/corncop/capricornus/zip/ZipInfoCallback;->process(Ljava/util/zip/ZipEntry;)V

    .line 22
    return-void
.end method
