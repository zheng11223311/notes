.class public Lcom/handmark/pulltorefresh/library/CurrentListUtil;
.super Ljava/lang/Object;
.source "CurrentListUtil.java"


# static fields
.field private static mCurrentListUtil:Lcom/handmark/pulltorefresh/library/CurrentListUtil;


# instance fields
.field private currentListName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/handmark/pulltorefresh/library/CurrentListUtil;

    invoke-direct {v0}, Lcom/handmark/pulltorefresh/library/CurrentListUtil;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/library/CurrentListUtil;->mCurrentListUtil:Lcom/handmark/pulltorefresh/library/CurrentListUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatLastUpdateTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "lastMil"    # J

    .prologue
    .line 26
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 27
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance()Lcom/handmark/pulltorefresh/library/CurrentListUtil;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/handmark/pulltorefresh/library/CurrentListUtil;->mCurrentListUtil:Lcom/handmark/pulltorefresh/library/CurrentListUtil;

    return-object v0
.end method

.method public static saveLastUpdateTime(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;J)V

    .line 33
    return-void
.end method


# virtual methods
.method public getCurrentListName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/CurrentListUtil;->currentListName:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentListName(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentListName"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/CurrentListUtil;->currentListName:Ljava/lang/String;

    .line 23
    return-void
.end method
