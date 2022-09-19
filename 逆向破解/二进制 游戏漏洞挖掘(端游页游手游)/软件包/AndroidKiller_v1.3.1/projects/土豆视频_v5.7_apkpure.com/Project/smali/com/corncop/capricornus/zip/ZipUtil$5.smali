.class final Lcom/corncop/capricornus/zip/ZipUtil$5;
.super Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/corncop/capricornus/zip/ZipUtil;->addEntry(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntrySource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$entry:Lcom/corncop/capricornus/zip/ZipEntrySource;

.field final synthetic val$zip:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntrySource;)V
    .locals 1

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/corncop/capricornus/zip/ZipUtil$5;->val$zip:Ljava/io/File;

    iput-object p2, p0, Lcom/corncop/capricornus/zip/ZipUtil$5;->val$entry:Lcom/corncop/capricornus/zip/ZipEntrySource;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;-><init>(Lcom/corncop/capricornus/zip/ZipUtil$1;)V

    return-void
.end method


# virtual methods
.method public act(Ljava/io/File;)Z
    .locals 2
    .param p1, "tmpFile"    # Ljava/io/File;

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$5;->val$zip:Ljava/io/File;

    iget-object v1, p0, Lcom/corncop/capricornus/zip/ZipUtil$5;->val$entry:Lcom/corncop/capricornus/zip/ZipEntrySource;

    invoke-static {v0, v1, p1}, Lcom/corncop/capricornus/zip/ZipUtil;->addEntry(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/io/File;)V

    .line 1594
    const/4 v0, 0x1

    return v0
.end method
