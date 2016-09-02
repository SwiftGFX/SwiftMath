//
//  easing.swift
//  org.SwiftGFX.SwiftMath
//
//  Created by Andrey Volodin on 03.09.16.
//
//

#if (os(OSX) || os(iOS) || os(tvOS) || os(watchOS))
import Darwin
#else
// TODO: Manage x-platform math
#endif

// MARK: Linear
func linear(_ time: Float) -> Float {
    return time
}

// MARK: Sine Ease
func sineEaseIn(_ time: Float) -> Float {
    return -1 * cosf(time * Angle.pi_2.radians) + 1
}

func sineEaseOut(_ time: Float) -> Float {
    return sinf(time * Angle.pi_2.radians)
}

func sineEaseInOut(_ time: Float) -> Float {
    return -0.5 * (cosf(Angle.pi.radians * time) - 1)
}

// MARK: Quad Ease
func quadEaseIn(_ time: Float) -> Float {
    return time * time
}

func quadEaseOut(_ time: Float) -> Float {
    return -1 * time * (time - 2)
}

func quadEaseInOut(_ time: Float) -> Float {
    var time = time * 2
    if time < 1 {
        return 0.5 * time * time
    }
    time -= 1
    return -0.5 * (time * (time - 2) - 1)
}

// MARK: Cubic Ease
func cubicEaseIn(_ time: Float) -> Float {
    return time * time * time
}

func cubicEaseOut(_ time: Float) -> Float {
    var time = time
    time -= 1
    return (time * time * time + 1)
}

func cubicEaseInOut(_ time: Float) -> Float {
    var time = time * 2
    if time < 1 {
        return 0.5 * time * time * time
    }
    time -= 2
    return 0.5 * (time * time * time + 2)
}

// MARK: Quart Ease
func quartEaseIn(_ time: Float) -> Float {
    return time * time * time * time
}

func quartEaseOut(_ time: Float) -> Float {
    var time = time
    time -= 1
    return -(time * time * time * time - 1)
}

func quartEaseInOut(_ time: Float) -> Float {
    var time = time
    time = time * 2
    if time < 1 {
        return 0.5 * time * time * time * time
    }
    time -= 2
    return -0.5 * (time * time * time * time - 2)
}

// MARK: Quint Ease
func quintEaseIn(_ time: Float) -> Float {
    return time * time * time * time * time
}

func quintEaseOut(_ time: Float) -> Float {
    var time = time
    time -= 1
    return (time * time * time * time * time + 1)
}

func quintEaseInOut(_ time: Float) -> Float {
    var time = time * 2
    if time < 1 {
        return 0.5 * time * time * time * time * time
    }
    time -= 2
    return 0.5 * (time * time * time * time * time + 2)
}

// MARK: Expo Ease
func expoEaseIn(_ time: Float) -> Float {
    return time == 0 ? 0 : powf(2, 10 * (time / 1 - 1)) - 1 * 0.001
}

func expoEaseOut(_ time: Float) -> Float {
    return time == 1 ? 1 : (-powf(2, -10 * time / 1) + 1)
}

func expoEaseInOut(_ time: Float) -> Float {
    var time = time
    time /= 0.5
    if time < 1 {
        time = 0.5 * powf(2, 10 * (time - 1))
    }
    else {
        time = 0.5 * (-powf(2, -10 * (time - 1)) + 2)
    }
    return time
}

// MARK: Circ Ease
func circEaseIn(_ time: Float) -> Float {
    return -1 * (sqrt(1 - time * time) - 1)
}

func circEaseOut(_ time: Float) -> Float {
    var time = time
    time = time - 1
    return sqrt(1 - time * time)
}

func circEaseInOut(_ time: Float) -> Float {
    var time = time
    time = time * 2
    if time < 1 {
        return -0.5 * (sqrt(1 - time * time) - 1)
    }
    time -= 2
    return 0.5 * (sqrt(1 - time * time) + 1)
}

// MARK: Elastic Ease
func elasticEaseIn(_ time: Float, period: Float) -> Float {
    var time = time
    var newT: Float = 0
    if time == 0 || time == 1 {
        newT = time
    }
    else {
        let s: Float = period / 4
        time = time - 1
        newT = -powf(2, 10 * time) * sinf((time - s) * Angle.pi2.radians / period)
    }
    return newT
}

func elasticEaseOut(_ time: Float, period: Float) -> Float {
    var newT: Float = 0
    if time == 0 || time == 1 {
        newT = time
    }
    else {
        let s: Float = period / 4
        newT = powf(2, -10 * time) * sinf((time - s) * Angle.pi2.radians / period) + 1
    }
    return newT
}

func elasticEaseInOut(_ time: Float, period: Float) -> Float {
    var time = time
    var period = period
    var newT: Float = 0
    if time == 0 || time == 1 {
        newT = time
    }
    else {
        time = time * 2
        if period == 0.0 {
            period = 0.3 * 1.5
        }
        let s: Float = period / 4
        time = time - 1
        if time < 0 {
            newT = -0.5 * powf(2, 10 * time) * sinf((time - s) * Angle.pi2.radians / period)
        }
        else {
            newT = powf(2, -10 * time) * sinf((time - s) * Angle.pi2.radians / period) * 0.5 + 1
        }
    }
    return newT
}
