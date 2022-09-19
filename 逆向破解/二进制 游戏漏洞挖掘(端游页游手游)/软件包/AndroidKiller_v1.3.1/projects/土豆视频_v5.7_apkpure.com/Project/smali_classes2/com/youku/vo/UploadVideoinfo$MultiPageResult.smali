.class public Lcom/youku/vo/UploadVideoinfo$MultiPageResult;
.super Ljava/lang/Object;
.source "UploadVideoinfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/UploadVideoinfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiPageResult"
.end annotation


# instance fields
.field public page:Lcom/youku/vo/Page;

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/UploadVideoinfo$Info;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/youku/vo/UploadVideoinfo;


# direct methods
.method public constructor <init>(Lcom/youku/vo/UploadVideoinfo;)V
    .locals 1

    .prologue
    .line 14
    iput-object p1, p0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->this$0:Lcom/youku/vo/UploadVideoinfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Lcom/youku/vo/Page;

    invoke-direct {v0}, Lcom/youku/vo/Page;-><init>()V

    iput-object v0, p0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;

    return-void
.end method
