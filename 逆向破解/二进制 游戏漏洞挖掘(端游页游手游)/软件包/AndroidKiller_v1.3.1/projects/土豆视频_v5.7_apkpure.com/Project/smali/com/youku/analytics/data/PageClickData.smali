.class public Lcom/youku/analytics/data/PageClickData;
.super Lcom/youku/analytics/data/CustomEvent;
.source "PageClickData.java"


# static fields
.field protected static final REFERCODE:Ljava/lang/String; = "rc1"


# instance fields
.field private mRefercode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/analytics/data/ActionBaseData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Lcom/youku/analytics/data/ActionBaseData;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "page"    # Ljava/lang/String;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "extend"    # Ljava/lang/String;
    .param p6, "refercode"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct/range {p0 .. p5}, Lcom/youku/analytics/data/CustomEvent;-><init>(Lcom/youku/analytics/data/ActionBaseData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/PageClickData;->mRefercode:Ljava/lang/String;

    .line 13
    iput-object p6, p0, Lcom/youku/analytics/data/PageClickData;->mRefercode:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public write(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/youku/analytics/data/CustomEvent;->write(Lorg/json/JSONObject;)V

    .line 19
    const-string v0, "rc1"

    iget-object v1, p0, Lcom/youku/analytics/data/PageClickData;->mRefercode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    return-void
.end method
