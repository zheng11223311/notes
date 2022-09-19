.class public Lcom/youku/analytics/data/PlayPauseData;
.super Lcom/youku/analytics/data/PlayActionData;
.source "PlayPauseData.java"


# direct methods
.method public constructor <init>(Lcom/youku/analytics/data/PlayActionData$Builder;Lcom/youku/analytics/data/ActionBaseData;)V
    .locals 0
    .param p1, "builder"    # Lcom/youku/analytics/data/PlayActionData$Builder;
    .param p2, "data"    # Lcom/youku/analytics/data/ActionBaseData;

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/youku/analytics/data/PlayActionData;-><init>(Lcom/youku/analytics/data/PlayActionData$Builder;Lcom/youku/analytics/data/ActionBaseData;)V

    .line 7
    return-void
.end method
