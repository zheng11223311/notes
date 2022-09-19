.class public final Lcom/mobisage/android/MobiSageHtmlUtility$AppInfoHolder;
.super Ljava/lang/Object;
.source "MobiSageHtmlUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageHtmlUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppInfoHolder"
.end annotation


# instance fields
.field an:Ljava/lang/String;

.field cn:Ljava/lang/String;

.field cv:Ljava/lang/String;

.field it:Ljava/lang/String;

.field pn:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 249
    instance-of v1, p1, Lcom/mobisage/android/MobiSageHtmlUtility$AppInfoHolder;

    if-nez v1, :cond_0

    .line 250
    const/4 v1, 0x0

    .line 255
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 253
    check-cast v0, Lcom/mobisage/android/MobiSageHtmlUtility$AppInfoHolder;

    .line 255
    .local v0, "that":Lcom/mobisage/android/MobiSageHtmlUtility$AppInfoHolder;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageHtmlUtility$AppInfoHolder;->pn:Ljava/lang/String;

    iget-object v2, v0, Lcom/mobisage/android/MobiSageHtmlUtility$AppInfoHolder;->pn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method
