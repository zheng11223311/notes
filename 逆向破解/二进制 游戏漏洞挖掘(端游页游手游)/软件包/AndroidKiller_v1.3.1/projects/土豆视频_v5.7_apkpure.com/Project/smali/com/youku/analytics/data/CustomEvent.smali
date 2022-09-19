.class public Lcom/youku/analytics/data/CustomEvent;
.super Ljava/lang/Object;
.source "CustomEvent.java"

# interfaces
.implements Lcom/youku/analytics/common/IOJson;


# static fields
.field protected static final EXTEND:Ljava/lang/String; = "e"

.field protected static final NAME:Ljava/lang/String; = "n3"

.field protected static final PAGE:Ljava/lang/String; = "p2"

.field protected static final TARGET:Ljava/lang/String; = "t3"


# instance fields
.field private mActionBaseData:Lcom/youku/analytics/data/ActionBaseData;

.field private mExtend:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPage:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/analytics/data/ActionBaseData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Lcom/youku/analytics/data/ActionBaseData;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "page"    # Ljava/lang/String;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "extend"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/youku/analytics/data/CustomEvent;->mActionBaseData:Lcom/youku/analytics/data/ActionBaseData;

    .line 35
    iput-object p2, p0, Lcom/youku/analytics/data/CustomEvent;->mName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/youku/analytics/data/CustomEvent;->mPage:Ljava/lang/String;

    .line 37
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "target_"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "target_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/analytics/data/CustomEvent;->mTarget:Ljava/lang/String;

    .line 41
    :goto_0
    iput-object p5, p0, Lcom/youku/analytics/data/CustomEvent;->mExtend:Ljava/lang/String;

    .line 42
    return-void

    .line 40
    :cond_0
    iput-object p4, p0, Lcom/youku/analytics/data/CustomEvent;->mTarget:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/youku/analytics/data/CustomEvent;->mActionBaseData:Lcom/youku/analytics/data/ActionBaseData;

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
    .line 59
    return-void
.end method

.method public setSession(Ljava/lang/String;J)V
    .locals 2
    .param p1, "session"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 68
    iget-object v0, p0, Lcom/youku/analytics/data/CustomEvent;->mActionBaseData:Lcom/youku/analytics/data/ActionBaseData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/youku/analytics/data/ActionBaseData;->setSession(Ljava/lang/String;J)V

    .line 69
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
    .line 46
    iget-object v0, p0, Lcom/youku/analytics/data/CustomEvent;->mActionBaseData:Lcom/youku/analytics/data/ActionBaseData;

    invoke-virtual {v0, p1}, Lcom/youku/analytics/data/ActionBaseData;->write(Lorg/json/JSONObject;)V

    .line 47
    iget-object v0, p0, Lcom/youku/analytics/data/CustomEvent;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const-string v0, "n3"

    iget-object v1, p0, Lcom/youku/analytics/data/CustomEvent;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/youku/analytics/data/CustomEvent;->mPage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    const-string v0, "p2"

    iget-object v1, p0, Lcom/youku/analytics/data/CustomEvent;->mPage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/youku/analytics/data/CustomEvent;->mTarget:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    const-string/jumbo v0, "t3"

    iget-object v1, p0, Lcom/youku/analytics/data/CustomEvent;->mTarget:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/youku/analytics/data/CustomEvent;->mExtend:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 54
    const-string v0, "e"

    iget-object v1, p0, Lcom/youku/analytics/data/CustomEvent;->mExtend:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_3
    return-void
.end method
