.class Lcom/corncop/capricornus/zip/ZipUtil$SingleZipEntryCallback;
.super Ljava/lang/Object;
.source "ZipUtil.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/ZipEntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corncop/capricornus/zip/ZipUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleZipEntryCallback"
.end annotation


# instance fields
.field private final action:Lcom/corncop/capricornus/zip/ZipEntryCallback;

.field private found:Z

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/corncop/capricornus/zip/ZipEntryCallback;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/corncop/capricornus/zip/ZipEntryCallback;

    .prologue
    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    iput-object p1, p0, Lcom/corncop/capricornus/zip/ZipUtil$SingleZipEntryCallback;->name:Ljava/lang/String;

    .line 738
    iput-object p2, p0, Lcom/corncop/capricornus/zip/ZipUtil$SingleZipEntryCallback;->action:Lcom/corncop/capricornus/zip/ZipEntryCallback;

    .line 739
    return-void
.end method


# virtual methods
.method public found()Z
    .locals 1

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$SingleZipEntryCallback;->found:Z

    return v0
.end method

.method public process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$SingleZipEntryCallback;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$SingleZipEntryCallback;->found:Z

    .line 744
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$SingleZipEntryCallback;->action:Lcom/corncop/capricornus/zip/ZipEntryCallback;

    invoke-interface {v0, p1, p2}, Lcom/corncop/capricornus/zip/ZipEntryCallback;->process(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)V

    .line 746
    :cond_0
    return-void
.end method
