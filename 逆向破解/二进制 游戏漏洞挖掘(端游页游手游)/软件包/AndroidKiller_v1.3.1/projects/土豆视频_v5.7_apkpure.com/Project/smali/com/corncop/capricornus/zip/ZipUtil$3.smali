.class final Lcom/corncop/capricornus/zip/ZipUtil$3;
.super Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/corncop/capricornus/zip/ZipUtil;->addEntry(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
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
    .line 1525
    iput-object p1, p0, Lcom/corncop/capricornus/zip/ZipUtil$3;->val$zip:Ljava/io/File;

    iput-object p2, p0, Lcom/corncop/capricornus/zip/ZipUtil$3;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/corncop/capricornus/zip/ZipUtil$3;->val$file:Ljava/io/File;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/corncop/capricornus/zip/ZipUtil$InPlaceAction;-><init>(Lcom/corncop/capricornus/zip/ZipUtil$1;)V

    return-void
.end method


# virtual methods
.method public act(Ljava/io/File;)Z
    .locals 3
    .param p1, "tmpFile"    # Ljava/io/File;

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/corncop/capricornus/zip/ZipUtil$3;->val$zip:Ljava/io/File;

    iget-object v1, p0, Lcom/corncop/capricornus/zip/ZipUtil$3;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/corncop/capricornus/zip/ZipUtil$3;->val$file:Ljava/io/File;

    invoke-static {v0, v1, v2, p1}, Lcom/corncop/capricornus/zip/ZipUtil;->addEntry(Ljava/io/File;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    .line 1528
    const/4 v0, 0x1

    return v0
.end method
