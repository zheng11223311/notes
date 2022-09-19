.class public Lcom/youku/vo/UserIntroductionData$Data;
.super Ljava/lang/Object;
.source "UserIntroductionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/UserIntroductionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;
    }
.end annotation


# instance fields
.field public about_myself:Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;

.field public nick_name:Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;

.field public pic_update:Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;

.field final synthetic this$0:Lcom/youku/vo/UserIntroductionData;


# direct methods
.method public constructor <init>(Lcom/youku/vo/UserIntroductionData;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/youku/vo/UserIntroductionData$Data;->this$0:Lcom/youku/vo/UserIntroductionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data{nick_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/UserIntroductionData$Data;->nick_name:Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", about_myself="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/UserIntroductionData$Data;->about_myself:Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pic_update="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/UserIntroductionData$Data;->pic_update:Lcom/youku/vo/UserIntroductionData$Data$IntroducionBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
