.class public abstract Lcom/tudou/service/favourite/FavouritePlaylistManager;
.super Ljava/lang/Object;
.source "FavouritePlaylistManager.java"

# interfaces
.implements Lcom/tudou/service/favourite/IFavouritePlaylist;


# static fields
.field public static final CACHE_DATA:I = 0x2

.field public static final PAGESIZE:I = 0xa

.field public static final SERVER_DATA:I = 0x3

.field public static final SQLITE_DATA:I = 0x1

.field private static instance:Lcom/tudou/service/favourite/IFavouritePlaylist;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/tudou/service/favourite/IFavouritePlaylist;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/tudou/service/favourite/FavouritePlaylistManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;

    invoke-direct {v0}, Lcom/tudou/service/favourite/FavouritePlaylistManagerImpl;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
