.class Lcom/corncop/capricornus/zip/Zips$UnpackingCallback$1;
.super Ljava/lang/Object;
.source "Zips.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;->transformIntoFile(Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;

.field final synthetic val$entryIn:Ljava/io/InputStream;

.field final synthetic val$transformer:Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;

.field final synthetic val$zipEntry:Ljava/util/zip/ZipEntry;

.field final synthetic val$zipOut:Ljava/util/zip/ZipOutputStream;


# direct methods
.method constructor <init>(Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipOutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback$1;->this$0:Lcom/corncop/capricornus/zip/Zips$UnpackingCallback;

    iput-object p2, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback$1;->val$transformer:Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;

    iput-object p3, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback$1;->val$entryIn:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback$1;->val$zipEntry:Ljava/util/zip/ZipEntry;

    iput-object p5, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback$1;->val$zipOut:Ljava/util/zip/ZipOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 710
    :try_start_0
    iget-object v1, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback$1;->val$transformer:Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;

    iget-object v2, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback$1;->val$entryIn:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback$1;->val$zipEntry:Ljava/util/zip/ZipEntry;

    iget-object v4, p0, Lcom/corncop/capricornus/zip/Zips$UnpackingCallback$1;->val$zipOut:Ljava/util/zip/ZipOutputStream;

    invoke-interface {v1, v2, v3, v4}, Lcom/corncop/capricornus/zip/transform/ZipEntryTransformer;->transform(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_0
    return-void

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/corncop/capricornus/zip/ZipExceptionUtil;->rethrow(Ljava/io/IOException;)Lcom/corncop/capricornus/zip/ZipException;

    goto :goto_0
.end method
