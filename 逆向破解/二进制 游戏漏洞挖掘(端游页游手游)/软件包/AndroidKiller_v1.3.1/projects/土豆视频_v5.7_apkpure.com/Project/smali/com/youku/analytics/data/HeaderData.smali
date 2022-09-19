.class public Lcom/youku/analytics/data/HeaderData;
.super Ljava/lang/Object;
.source "HeaderData.java"

# interfaces
.implements Lcom/youku/analytics/common/IOJson;


# static fields
.field protected static final APPNAME:Ljava/lang/String; = "a1"

.field protected static final APPVER:Ljava/lang/String; = "a2"

.field protected static final BRAND:Ljava/lang/String; = "b1"

.field protected static final BTYPE:Ljava/lang/String; = "b2"

.field protected static final DISPLAYNAME:Ljava/lang/String; = "a3"

.field protected static final GDID:Ljava/lang/String; = "g2"

.field protected static final GUID:Ljava/lang/String; = "g1"

.field protected static final HT:Ljava/lang/String; = "h"

.field protected static final IMEI:Ljava/lang/String; = "i1"

.field protected static final IMSI:Ljava/lang/String; = "i2"

.field protected static final MAC:Ljava/lang/String; = "m"

.field protected static final OS:Ljava/lang/String; = "o1"

.field protected static final OSVER:Ljava/lang/String; = "o2"

.field protected static final PID:Ljava/lang/String; = "p"

.field protected static final RGUID:Ljava/lang/String; = "n3"

.field protected static final SDKVER:Ljava/lang/String; = "s"

.field protected static final UUID:Ljava/lang/String; = "u"

.field protected static final WT:Ljava/lang/String; = "w"


# instance fields
.field private appname:Ljava/lang/String;

.field private appver:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private btype:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private gdid:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private ht:I

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private osver:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private rguid:Ljava/lang/String;

.field private sdkver:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private wt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->pid:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lcom/youku/analytics/data/Device;->pid:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->pid:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/youku/analytics/data/Device;->appname:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->appname:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/youku/analytics/data/Device;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->guid:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/youku/analytics/data/Device;->gdid:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->gdid:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/youku/analytics/data/Device;->appver:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->appver:Ljava/lang/String;

    .line 41
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->brand:Ljava/lang/String;

    .line 42
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->btype:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/youku/analytics/data/Device;->os:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->os:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/youku/analytics/data/Device;->os_ver:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->osver:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/youku/analytics/data/Device;->sdkver:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->sdkver:Ljava/lang/String;

    .line 46
    sget v0, Lcom/youku/analytics/data/Device;->wt:I

    iput v0, p0, Lcom/youku/analytics/data/HeaderData;->wt:I

    .line 47
    sget v0, Lcom/youku/analytics/data/Device;->ht:I

    iput v0, p0, Lcom/youku/analytics/data/HeaderData;->ht:I

    .line 48
    sget-object v0, Lcom/youku/analytics/data/Device;->imei:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->imei:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/youku/analytics/data/Device;->imsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->imsi:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/youku/analytics/data/Device;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->uuid:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/youku/analytics/data/Device;->mac:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->mac:Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/youku/analytics/data/Device;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->displayName:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/youku/analytics/data/Device;->rguid:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/analytics/data/HeaderData;->rguid:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/youku/analytics/data/HeaderData;->guid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
    .line 128
    return-void
.end method

.method public setSession(Ljava/lang/String;J)V
    .locals 0
    .param p1, "session"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 230
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
    .line 60
    const-string v0, "p"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v0, "o1"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->os:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string/jumbo v0, "w"

    iget v1, p0, Lcom/youku/analytics/data/HeaderData;->wt:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string v0, "h"

    iget v1, p0, Lcom/youku/analytics/data/HeaderData;->ht:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    iget-object v0, p0, Lcom/youku/analytics/data/HeaderData;->guid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const-string v0, "g1"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/youku/analytics/data/HeaderData;->gdid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    const-string v0, "g2"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->gdid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/youku/analytics/data/HeaderData;->appname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    const-string v0, "a1"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->appname:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/youku/analytics/data/HeaderData;->brand:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    const-string v0, "b1"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->brand:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/youku/analytics/data/HeaderData;->btype:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 84
    const-string v0, "b2"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->btype:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/youku/analytics/data/HeaderData;->osver:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 88
    const-string v0, "o2"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->osver:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/youku/analytics/data/HeaderData;->sdkver:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 92
    const-string/jumbo v0, "s"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->sdkver:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/youku/analytics/data/HeaderData;->imei:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 96
    const-string v0, "i1"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->imei:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :cond_7
    iget-object v0, p0, Lcom/youku/analytics/data/HeaderData;->imsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 100
    const-string v0, "i2"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->imsi:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    :cond_8
    iget-object v0, p0, Lcom/youku/analytics/data/HeaderData;->uuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 104
    const-string/jumbo v0, "u"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_9
    iget-object v0, p0, Lcom/youku/analytics/data/HeaderData;->mac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 108
    const-string v0, "m"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->mac:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    :cond_a
    iget-object v0, p0, Lcom/youku/analytics/data/HeaderData;->appver:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 112
    const-string v0, "a2"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->appver:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    :cond_b
    iget-object v0, p0, Lcom/youku/analytics/data/HeaderData;->displayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 116
    const-string v0, "a3"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_c
    iget-object v0, p0, Lcom/youku/analytics/data/HeaderData;->rguid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 120
    const-string v0, "n3"

    iget-object v1, p0, Lcom/youku/analytics/data/HeaderData;->rguid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    :cond_d
    return-void
.end method
