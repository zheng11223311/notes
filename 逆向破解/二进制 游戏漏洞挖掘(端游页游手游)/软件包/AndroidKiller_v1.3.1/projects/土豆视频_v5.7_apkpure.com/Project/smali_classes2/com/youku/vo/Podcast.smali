.class public Lcom/youku/vo/Podcast;
.super Ljava/lang/Object;
.source "Podcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/Podcast$Users;
    }
.end annotation


# instance fields
.field public code:I

.field public data:Lcom/youku/vo/Podcast$Users;

.field public isFirstAccess:Z

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/youku/vo/Podcast$Users;

    invoke-direct {v0, p0}, Lcom/youku/vo/Podcast$Users;-><init>(Lcom/youku/vo/Podcast;)V

    iput-object v0, p0, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/vo/Podcast;->isFirstAccess:Z

    .line 20
    return-void
.end method
