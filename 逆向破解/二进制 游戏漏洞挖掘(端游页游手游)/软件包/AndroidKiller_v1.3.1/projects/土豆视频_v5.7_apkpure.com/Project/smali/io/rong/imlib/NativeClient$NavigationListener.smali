.class public Lio/rong/imlib/NativeClient$NavigationListener;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$NaviDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/NativeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNaviData(Ljava/lang/String;)V
    .locals 1
    .param p1, "naviData"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {}, Lio/rong/imlib/NativeClient;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/rong/imlib/navigation/Navigation;->setNavigationData(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    return-void
.end method
