.class public Landroid/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# static fields
.field private static final CHECKED_STATE_SET:[I = null

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I

.field private static final isLenovoStyle:Z


# instance fields
.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const-string v0, "Lenovo"

    const-string/jumbo v1, "ro.product.brand"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/Switch;->isLenovoStyle:Z

    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 138
    const v0, 0x10103f7

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 114
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 153
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v7}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 155
    .local v3, res:Landroid/content/res/Resources;
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Landroid/text/TextPaint;->density:F

    .line 156
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 158
    sget-object v4, Lcom/android/internal/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 161
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 163
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 164
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 165
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 167
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 169
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Switch;->mSwitchPadding:I

    .line 172
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 174
    .local v1, appearance:I
    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0, p1, v1}, Landroid/widget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 177
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 180
    .local v2, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Landroid/widget/Switch;->mTouchSlop:I

    .line 181
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 185
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 186
    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 0
    .parameter "newCheckedState"

    .prologue
    .line 650
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 651
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 613
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 614
    .local v0, cancel:Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 615
    invoke-super {p0, v0}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 616
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 617
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 654
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 655
    iget v2, p0, Landroid/widget/Switch;->mThumbPosition:F

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 657
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 655
    goto :goto_0

    .line 657
    :cond_2
    iget v2, p0, Landroid/widget/Switch;->mThumbPosition:F

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 806
    const/4 v0, 0x0

    .line 809
    :goto_0
    return v0

    .line 808
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 809
    iget v0, p0, Landroid/widget/Switch;->mSwitchWidth:I

    iget v1, p0, Landroid/widget/Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 536
    iget-object v4, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 537
    iget v4, p0, Landroid/widget/Switch;->mSwitchTop:I

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v3, v4, v5

    .line 538
    .local v3, thumbTop:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchLeft:I

    iget v5, p0, Landroid/widget/Switch;->mThumbPosition:F

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v1, v4, v5

    .line 539
    .local v1, thumbLeft:I
    iget v4, p0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v2, v4, v5

    .line 541
    .local v2, thumbRight:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchBottom:I

    iget v5, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v0, v4, v5

    .line 542
    .local v0, thumbBottom:I
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    int-to-float v4, v3

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    int-to-float v4, v0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .parameter "text"

    .prologue
    .line 523
    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 527
    .local v1, transformed:Ljava/lang/CharSequence;
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .end local v1           #transformed:Ljava/lang/CharSequence;
    :cond_0
    move-object v1, p1

    .line 523
    goto :goto_0
.end method

.method private setSwitchTypefaceByIndex(II)V
    .locals 1
    .parameter "typefaceIndex"
    .parameter "styleIndex"

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, tf:Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 257
    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    .line 258
    return-void

    .line 245
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 246
    goto :goto_0

    .line 249
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 250
    goto :goto_0

    .line 253
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setThumbPosition(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    const/4 v0, 0x0

    .line 662
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    if-eqz p1, :cond_0

    :goto_0
    iput v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 667
    :goto_1
    return-void

    .line 663
    :cond_0
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 665
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :cond_2
    iput v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    goto :goto_1
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 625
    iput v4, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 629
    .local v0, commitChange:Z
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 631
    if-eqz v0, :cond_5

    .line 633
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 634
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 635
    .local v2, xvel:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 636
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_2

    cmpg-float v5, v2, v7

    if-gez v5, :cond_1

    move v1, v3

    .line 640
    .local v1, newState:Z
    :goto_1
    invoke-direct {p0, v1}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    .line 644
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :goto_2
    return-void

    .end local v0           #commitChange:Z
    :cond_0
    move v0, v4

    .line 627
    goto :goto_0

    .restart local v0       #commitChange:Z
    .restart local v2       #xvel:F
    :cond_1
    move v1, v4

    .line 636
    goto :goto_1

    :cond_2
    cmpl-float v5, v2, v7

    if-lez v5, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_1

    .line 638
    :cond_4
    invoke-direct {p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1       #newState:Z
    goto :goto_1

    .line 642
    .end local v1           #newState:Z
    .end local v2           #xvel:F
    :cond_5
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 823
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 825
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 829
    .local v0, myDrawableState:[I
    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 830
    :cond_0
    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 832
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 833
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 782
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_1

    .line 783
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 789
    :cond_0
    :goto_0
    return v0

    .line 785
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 786
    .local v0, padding:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 787
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 794
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 795
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    .line 801
    :cond_0
    :goto_0
    return v0

    .line 797
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 798
    .local v0, padding:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 799
    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Landroid/widget/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 842
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 843
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 844
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 845
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 814
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 815
    .local v0, drawableState:[I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    sget-object v1, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/Switch;->mergeDrawableStates([I[I)[I

    .line 818
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 722
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 725
    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 726
    .local v6, switchLeft:I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/Switch;->mSwitchTop:I

    .line 727
    .local v9, switchTop:I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/Switch;->mSwitchRight:I

    .line 728
    .local v7, switchRight:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 730
    .local v1, switchBottom:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v6, v9, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 731
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 733
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 735
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 736
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int v3, v6, v13

    .line 737
    .local v3, switchInnerLeft:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int v5, v9, v13

    .line 738
    .local v5, switchInnerTop:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int v4, v7, v13

    .line 739
    .local v4, switchInnerRight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v13

    .line 740
    .local v2, switchInnerBottom:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v9, v4, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 742
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 743
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Switch;->mThumbPosition:F

    const/high16 v14, 0x3f00

    add-float/2addr v13, v14

    float-to-int v11, v13

    .line 744
    .local v11, thumbPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int v13, v3, v13

    add-int v10, v13, v11

    .line 745
    .local v10, thumbLeft:I
    add-int v13, v3, v11

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int v12, v13, v14

    .line 747
    .local v12, thumbRight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v10, v9, v12, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 748
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    if-eqz v13, :cond_0

    .line 752
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 755
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v14

    iput-object v14, v13, Landroid/text/TextPaint;->drawableState:[I

    .line 757
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 758
    .local v8, switchText:Landroid/text/Layout;
    :goto_0
    if-eqz v8, :cond_1

    .line 759
    sget-boolean v13, Landroid/widget/Switch;->isLenovoStyle:Z

    if-eqz v13, :cond_3

    const-string v13, "com.android.cts.holo"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    invoke-static {v13, v14}, Landroid/app/ActivityManager;->isCtsRunning(Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 777
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 778
    return-void

    .line 757
    .end local v8           #switchText:Landroid/text/Layout;
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_0

    .line 771
    .restart local v8       #switchText:Landroid/text/Layout;
    :cond_3
    add-int v13, v10, v12

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    int-to-float v13, v13

    add-int v14, v5, v2

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 773
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 849
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 850
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 851
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 855
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 856
    const-class v3, Landroid/widget/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 857
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 858
    .local v2, switchText:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 859
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 860
    .local v1, oldText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 861
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 868
    .end local v1           #oldText:Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 857
    .end local v2           #switchText:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 863
    .restart local v1       #oldText:Ljava/lang/CharSequence;
    .restart local v2       #switchText:Ljava/lang/CharSequence;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 864
    .local v0, newText:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 865
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 678
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 680
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/Switch;->setThumbPosition(Z)V

    .line 685
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 686
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 687
    .local v1, switchLeft:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v2, v1, v4

    .line 693
    .local v2, switchRight:I
    :goto_0
    const/4 v3, 0x0

    .line 694
    .local v3, switchTop:I
    const/4 v0, 0x0

    .line 695
    .local v0, switchBottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 698
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 699
    iget v4, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 714
    :goto_1
    iput v1, p0, Landroid/widget/Switch;->mSwitchLeft:I

    .line 715
    iput v3, p0, Landroid/widget/Switch;->mSwitchTop:I

    .line 716
    iput v0, p0, Landroid/widget/Switch;->mSwitchBottom:I

    .line 717
    iput v2, p0, Landroid/widget/Switch;->mSwitchRight:I

    .line 718
    return-void

    .line 689
    .end local v0           #switchBottom:I
    .end local v1           #switchLeft:I
    .end local v2           #switchRight:I
    .end local v3           #switchTop:I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 690
    .restart local v2       #switchRight:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchWidth:I

    sub-int v1, v2, v4

    .restart local v1       #switchLeft:I
    goto :goto_0

    .line 703
    .restart local v0       #switchBottom:I
    .restart local v3       #switchTop:I
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Landroid/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 705
    iget v4, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 706
    goto :goto_1

    .line 709
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 710
    iget v4, p0, Landroid/widget/Switch;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_1

    .line 695
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 488
    iget-object v4, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v4, :cond_0

    .line 489
    iget-object v4, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 491
    :cond_0
    iget-object v4, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v4, :cond_1

    .line 492
    iget-object v4, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    .line 495
    :cond_1
    iget-object v4, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 496
    iget-object v4, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 497
    .local v0, maxTextWidth:I
    iget v4, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    mul-int/lit8 v5, v0, 0x2

    iget v6, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 499
    .local v3, switchWidth:I
    iget-object v4, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 501
    .local v2, switchHeight:I
    iget v4, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    iput v4, p0, Landroid/widget/Switch;->mThumbWidth:I

    .line 503
    iput v3, p0, Landroid/widget/Switch;->mSwitchWidth:I

    .line 504
    iput v2, p0, Landroid/widget/Switch;->mSwitchHeight:I

    .line 506
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 507
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 508
    .local v1, measuredHeight:I
    if-ge v1, v2, :cond_2

    .line 509
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v4

    invoke-virtual {p0, v4, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 511
    :cond_2
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 515
    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 516
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 517
    .local v0, layout:Landroid/text/Layout;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_0
    return-void

    .line 516
    .end local v0           #layout:Landroid/text/Layout;
    :cond_1
    iget-object v0, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 547
    iget-object v6, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 549
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 609
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_1
    return v5

    .line 551
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 552
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 553
    .local v4, y:F
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v3, v4}, Landroid/widget/Switch;->hitThumb(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 554
    iput v5, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 555
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 556
    iput v4, p0, Landroid/widget/Switch;->mTouchY:F

    goto :goto_0

    .line 562
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_2
    iget v6, p0, Landroid/widget/Switch;->mTouchMode:I

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 568
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 569
    .restart local v3       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 570
    .restart local v4       #y:F
    iget v6, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_2

    iget v6, p0, Landroid/widget/Switch;->mTouchY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 572
    :cond_2
    iput v8, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 573
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 574
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 575
    iput v4, p0, Landroid/widget/Switch;->mTouchY:F

    goto :goto_1

    .line 582
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 583
    .restart local v3       #x:F
    iget v6, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v1, v3, v6

    .line 584
    .local v1, dx:F
    const/4 v6, 0x0

    iget v7, p0, Landroid/widget/Switch;->mThumbPosition:F

    add-float/2addr v7, v1

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 586
    .local v2, newPos:F
    iget v6, p0, Landroid/widget/Switch;->mThumbPosition:F

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_1

    .line 587
    iput v2, p0, Landroid/widget/Switch;->mThumbPosition:F

    .line 588
    iput v3, p0, Landroid/widget/Switch;->mTouchX:F

    .line 589
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 599
    .end local v1           #dx:F
    .end local v2           #newPos:F
    .end local v3           #x:F
    :pswitch_5
    iget v6, p0, Landroid/widget/Switch;->mTouchMode:I

    if-ne v6, v8, :cond_3

    .line 600
    invoke-direct {p0, p1}, Landroid/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 603
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/Switch;->mTouchMode:I

    .line 604
    iget-object v5, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 562
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 671
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 672
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Switch;->setThumbPosition(Z)V

    .line 673
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 674
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 338
    iput p1, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    .line 339
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 340
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 314
    iput p1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 316
    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .locals 11
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 195
    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 202
    .local v1, appearance:Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 204
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    .line 205
    iput-object v2, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    .line 211
    :goto_0
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 213
    .local v4, ts:I
    if-eqz v4, :cond_0

    .line 214
    int-to-float v6, v4

    iget-object v7, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 215
    iget-object v6, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 222
    :cond_0
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 224
    .local v5, typefaceIndex:I
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 227
    .local v3, styleIndex:I
    invoke-direct {p0, v5, v3}, Landroid/widget/Switch;->setSwitchTypefaceByIndex(II)V

    .line 229
    const/4 v6, 0x7

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 231
    .local v0, allCaps:Z
    if-eqz v0, :cond_2

    .line 232
    new-instance v6, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    .line 233
    iget-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v6, v10}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    .line 238
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    return-void

    .line 208
    .end local v0           #allCaps:Z
    .end local v3           #styleIndex:I
    .end local v4           #ts:I
    .end local v5           #typefaceIndex:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 235
    .restart local v0       #allCaps:Z
    .restart local v3       #styleIndex:I
    .restart local v4       #ts:I
    .restart local v5       #typefaceIndex:I
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    goto :goto_1
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter "tf"

    .prologue
    .line 298
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 299
    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 301
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 302
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 304
    :cond_0
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 267
    if-lez p2, :cond_4

    .line 268
    if-nez p1, :cond_1

    .line 269
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 274
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    .line 276
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 277
    .local v1, typefaceStyle:I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 278
    .local v0, need:I
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 279
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x4180

    :goto_2
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 285
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_3
    return-void

    .line 271
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 276
    goto :goto_1

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_3
    move v2, v3

    .line 279
    goto :goto_2

    .line 281
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_4
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 282
    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 283
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "textOff"

    .prologue
    .line 482
    iput-object p1, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    .line 483
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 484
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "textOn"

    .prologue
    .line 463
    iput-object p1, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    .line 464
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 465
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "thumb"

    .prologue
    .line 420
    iput-object p1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 421
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 422
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 433
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 362
    iput p1, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    .line 363
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 364
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "track"

    .prologue
    .line 385
    iput-object p1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 386
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 387
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 397
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 837
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
