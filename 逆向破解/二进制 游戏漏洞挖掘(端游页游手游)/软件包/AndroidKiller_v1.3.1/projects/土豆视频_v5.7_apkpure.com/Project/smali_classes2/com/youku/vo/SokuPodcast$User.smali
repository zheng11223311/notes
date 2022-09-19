.class public Lcom/youku/vo/SokuPodcast$User;
.super Ljava/lang/Object;
.source "SokuPodcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/SokuPodcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "User"
.end annotation


# instance fields
.field public ATTENTION_STATE:I

.field public aboutMyself:Ljava/lang/String;

.field public isAttention:Z

.field public isSelf:Z

.field public isVuser:Z

.field public lut:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public subedNum:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/SokuPodcast;

.field public uploadCount:Ljava/lang/String;

.field public userId:I

.field public username:Ljava/lang/String;

.field public userpicurl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/SokuPodcast;)V
    .locals 1

    .prologue
    .line 26
    iput-object p1, p0, Lcom/youku/vo/SokuPodcast$User;->this$0:Lcom/youku/vo/SokuPodcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/vo/SokuPodcast$User;->isSelf:Z

    return-void
.end method


# virtual methods
.method public setAttentionState()V
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/youku/vo/SokuPodcast$User;->isAttention:Z

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/youku/vo/SokuPodcast$User;->ATTENTION_STATE:I

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/vo/SokuPodcast$User;->ATTENTION_STATE:I

    goto :goto_0
.end method
