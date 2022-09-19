.class public Lcom/youku/vo/IntroductionErrorBean;
.super Ljava/lang/Object;
.source "IntroductionErrorBean.java"


# instance fields
.field public code:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/IntroductionErrorBean;->status:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/IntroductionErrorBean;->code:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/IntroductionErrorBean;->desc:Ljava/lang/String;

    return-void
.end method
