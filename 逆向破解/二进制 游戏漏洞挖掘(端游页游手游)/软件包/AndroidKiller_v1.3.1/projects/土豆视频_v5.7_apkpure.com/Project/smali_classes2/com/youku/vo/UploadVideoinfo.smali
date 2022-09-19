.class public Lcom/youku/vo/UploadVideoinfo;
.super Ljava/lang/Object;
.source "UploadVideoinfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/UploadVideoinfo$Info;,
        Lcom/youku/vo/UploadVideoinfo$MultiPageResult;
    }
.end annotation


# instance fields
.field public multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    invoke-direct {v0, p0}, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;-><init>(Lcom/youku/vo/UploadVideoinfo;)V

    iput-object v0, p0, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    .line 18
    return-void
.end method
