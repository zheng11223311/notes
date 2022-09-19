.class public interface abstract Lcom/youku/player/apiservice/IPlayerAdControl;
.super Ljava/lang/Object;
.source "IPlayerAdControl.java"


# virtual methods
.method public abstract clearMidAD()V
.end method

.method public abstract creatDialogToLogin(Lcom/youku/player/module/PlayVideoInfo;)V
.end method

.method public abstract dismissImageAD()V
.end method

.method public abstract dismissInteractiveAD()V
.end method

.method public abstract dismissPauseAD()V
.end method

.method public abstract getAdState()Lcom/youku/player/ad/AdState;
.end method

.method public abstract getMidAdModel()Lcom/youku/player/ad/MidAdModel;
.end method

.method public abstract initInvestigate(Lcom/youku/player/goplay/VideoAdvInfo;)V
.end method

.method public abstract interuptAD()V
.end method

.method public abstract isImageADShowingAndNoSave()Z
.end method

.method public abstract isImageAdShowing()Z
.end method

.method public abstract isImageAdStartToShow()Z
.end method

.method public abstract isMidAdShowing()Z
.end method

.method public abstract isPauseAdVisible()Z
.end method

.method public abstract onAdvInfoGetted(Z)V
.end method

.method public abstract onDownloadDialogShow(Lcom/youku/player/goplay/AdvInfo;)V
.end method

.method public abstract onMidAdLoadingEndListener()V
.end method

.method public abstract onMidAdLoadingStartListener()V
.end method

.method public abstract onMidAdPlay()V
.end method

.method public abstract onMoreInfoClicked(Ljava/lang/String;Lcom/youku/player/goplay/AdvInfo;)V
.end method

.method public abstract onSkipAdClicked()V
.end method

.method public abstract releaseInvestigate()V
.end method

.method public abstract setAdState(Lcom/youku/player/ad/AdState;)V
.end method

.method public abstract setImageAdShowing(Z)V
.end method

.method public abstract setListener(Lcom/youku/player/ad/api/IAdControlListener;)V
.end method

.method public abstract setMidADInfo(Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Point;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setPauseTestAd(Ljava/lang/String;)V
.end method

.method public abstract showImageAD(Lcom/youku/player/goplay/VideoAdvInfo;)V
.end method

.method public abstract showInvestigate()V
.end method

.method public abstract showPauseAD()V
.end method
