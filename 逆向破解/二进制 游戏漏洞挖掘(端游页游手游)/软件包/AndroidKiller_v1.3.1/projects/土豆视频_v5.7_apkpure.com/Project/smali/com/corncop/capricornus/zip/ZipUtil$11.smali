.class final Lcom/corncop/capricornus/zip/ZipUtil$11;
.super Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/corncop/capricornus/zip/ZipUtil;->replaceEntry(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$zip:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 1850
    iput-object p1, p0, Lcom/corncop/capricornus/zip/ZipUtil$11;->val$zip:Ljava/io/File;

    iput-object p2, p0, Lcom/corncop/capricornus/zip/ZipUtil$11;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/corncop/capricornus/zip/ZipUtil$11;->val$file:Ljava/io/File;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;-><init>(Lcom/corncop/capricornus/zip/ZipUtil$1;)V

    return-void
.end method


# virtual methods
.method public act(Ljava/io/File;)Z
    .locals 4
    .param p1, "tmpFile"    # Ljava/io/File;

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$11;->val$zip:Ljava/io/File;

    new-instance v1, Lcom/corncop/capricornus/zip/FileSource;

    iget-object v2, p0, Lcom/corncop/capricornus/zip/ZipUtil$11;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/corncop/capricornus/zip/ZipUtil$11;->val$file:Ljava/io/File;

    invoke-direct {v1, v2, v3}, Lcom/corncop/capricornus/zip/FileSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {v0, v1, p1}, Lcom/corncop/capricornus/zip/ZipUtil;->replaceEntry(Ljava/io/File;Lcom/corncop/capricornus/zip/ZipEntrySource;Ljava/io/File;)Z

    move-result v0

    return v0
.end method
