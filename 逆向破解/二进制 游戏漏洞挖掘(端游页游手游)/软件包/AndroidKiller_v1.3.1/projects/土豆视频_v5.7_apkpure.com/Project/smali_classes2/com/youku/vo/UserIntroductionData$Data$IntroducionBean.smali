.class public Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;
.super Ljava/lang/Object;
.source "UserIntroductionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/UserIntroductionData$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntroducionBean"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public cookies:Ljava/lang/String;

.field public picupdate_url:Ljava/lang/String;

.field public result:Ljava/lang/String;

.field final synthetic this$1:Lcom/youku/vo/UserIntroductionData$Data;


# direct methods
.method public constructor <init>(Lcom/youku/vo/UserIntroductionData$Data;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;->this$1:Lcom/youku/vo/UserIntroductionData$Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;->code:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;->result:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;->picupdate_url:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;->cookies:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntroducionBean{code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", picupdate_url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;->picupdate_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cookies=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;->cookies:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
