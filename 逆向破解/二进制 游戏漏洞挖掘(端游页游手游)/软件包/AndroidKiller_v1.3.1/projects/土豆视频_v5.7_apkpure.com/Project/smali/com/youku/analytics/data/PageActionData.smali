.class public Lcom/youku/analytics/data/PageActionData;
.super Ljava/lang/Object;
.source "PageActionData.java"

# interfaces
.implements Lcom/youku/analytics/common/IOJson;


# static fields
.field private static final PAGE:Ljava/lang/String; = "p1"

.field private static final REFER_PAGE:Ljava/lang/String; = "rp1"


# instance fields
.field private mBaseData:Lcom/youku/analytics/data/ActionBaseData;

.field private mPage:Ljava/lang/String;

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/analytics/data/ActionBaseData;Ljava/lang/String;)V
    .locals 1
    .param p1, "base"    # Lcom/youku/analytics/data/ActionBaseData;
    .param p2, "page"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PageActionData;->mSource:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/youku/analytics/data/PageActionData;->mBaseData:Lcom/youku/analytics/data/ActionBaseData;

    .line 25
    iput-object p2, p0, Lcom/youku/analytics/data/PageActionData;->mPage:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/youku/analytics/data/ActionBaseData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "base"    # Lcom/youku/analytics/data/ActionBaseData;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PageActionData;->mSource:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/youku/analytics/data/PageActionData;->mBaseData:Lcom/youku/analytics/data/ActionBaseData;

    .line 30
    iput-object p2, p0, Lcom/youku/analytics/data/PageActionData;->mPage:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/youku/analytics/data/PageActionData;->mSource:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/youku/analytics/data/PageActionData;->mBaseData:Lcom/youku/analytics/data/ActionBaseData;

    invoke-virtual {v0}, Lcom/youku/analytics/data/ActionBaseData;->isValid()Z

    move-result v0

    return v0
.end method

.method public read(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    return-void
.end method

.method public setPageSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/youku/analytics/data/PageActionData;->mSource:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setSession(Ljava/lang/String;J)V
    .locals 2
    .param p1, "session"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/analytics/data/PageActionData;->mBaseData:Lcom/youku/analytics/data/ActionBaseData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/analytics/data/ActionBaseData;->setSession(Ljava/lang/String;J)V

    .line 61
    return-void
.end method

.method public write(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/youku/analytics/data/PageActionData;->mBaseData:Lcom/youku/analytics/data/ActionBaseData;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/youku/analytics/data/PageActionData;->mBaseData:Lcom/youku/analytics/data/ActionBaseData;

    invoke-virtual {v0, p1}, Lcom/youku/analytics/data/ActionBaseData;->write(Lorg/json/JSONObject;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/youku/analytics/data/PageActionData;->mPage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    const-string v0, "p1"

    iget-object v1, p0, Lcom/youku/analytics/data/PageActionData;->mPage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    :cond_1
    const-string/jumbo v0, "rp1"

    iget-object v1, p0, Lcom/youku/analytics/data/PageActionData;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    return-void
.end method
